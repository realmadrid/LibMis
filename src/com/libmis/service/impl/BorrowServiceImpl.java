package com.libmis.service.impl;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.libmis.dao.BorrowDAO;
import com.libmis.dao.CopyDAO;
import com.libmis.dao.FaultDAO;
import com.libmis.dao.UserDAO;
import com.libmis.model.Borrow;
import com.libmis.model.Copy;
import com.libmis.model.Fault;
import com.libmis.model.User;
import com.libmis.service.BorrowService;

@Component("borrowService")
public class BorrowServiceImpl implements BorrowService {

	@Autowired
	private BorrowDAO borrowDAO;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private CopyDAO copyDAO;
	@Autowired
	private FaultDAO faultDAO;

	@Override
	public void delete(Borrow borrow) {
		borrowDAO.delete(borrow);
	}

	@Override
	public Borrow getById(int id) {
		return borrowDAO.getById(id);
	}

	@Override
	public int getResultSize() {
		return borrowDAO.getResultSize();
	}

	@Override
	public int getResultSize(String username, boolean haveReturned) {
		return borrowDAO.getResultSize(username, haveReturned);
	}

	@Override
	public List<Borrow> list(int startResult, int maxResult) {
		return borrowDAO.list(startResult, maxResult);
	}

	// 此方法用来查看某用户自己当前借阅(未归还)的图书以及借阅历史(已归还)
	@Override
	public List<Borrow> listByUsernameAndHaveReturned(String username,
			boolean haveReturned, int startResult, int maxResult) {
		return borrowDAO.listByUsernameAndHaveReturned(username, haveReturned,
				startResult, maxResult);
	}

	@Override
	public Serializable save(Borrow borrow) {
		// 根据用户名取到用户
		User user = userDAO.getbyUsername(borrow.getUser().getUsername());
		if (user == null)
			return 0;
		//如果借书人超过借书上限，返回0
		if(user.getBorrowed()>=user.getLimitNumber())
			return 0;
		
		
		
		borrow.setUser(user);
		// 根据条码号取到副本
		Copy copy = copyDAO.getByBarcode(borrow.getCopy().getBarcode());
		if (copy == null)
			return 0;
		if (copy.isBorrowed())
			return 0;
		// 修改副本借出状态
		copy.setBorrowed(true);
		//更新用户的借书数量
		user.setBorrowed(user.getBorrowed()+1);
		
		// 设置borrow记录信息
		borrow.setCopy(copy);
		Date borrowTime = new Date(System.currentTimeMillis());
		borrow.setBorrowTime(borrowTime);
		borrow.setHaveReturned(false);
		borrow.setRenewTimes(0);
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, 1);
		Date shouldReturnTime = cal.getTime();
		borrow.setShouldReturnTime(shouldReturnTime);
		
		copyDAO.update(copy);
		userDAO.update(user);
		return borrowDAO.save(borrow);
	}

	@Override
	public void update(Borrow borrow) {
		borrowDAO.update(borrow);
	}

	public BorrowDAO getBorrowDAO() {
		return borrowDAO;
	}

	public void setBorrowDAO(BorrowDAO borrowDAO) {
		this.borrowDAO = borrowDAO;
	}

	@Override
	public Fault returnBook(Borrow borrow) {
		// 根据条码号取到借阅记录
		Borrow b = borrowDAO.getByBarcode(borrow.getCopy().getBarcode());
		if (b == null)
			return null;
		if (b.isHaveReturned())
			return null;
		// 首先将修改借阅记录
		b.setHaveReturned(true);
		b.setRealReturnTime(new Date(System.currentTimeMillis()));
		borrowDAO.update(b);
		//修改用户已借本书
		User u=b.getUser();
		u.setBorrowed(u.getBorrowed()-1);
		userDAO.update(u);
		
		// 然后修改副本状态，损坏或是良好，并且修改借出状态
		Copy c = copyDAO.getByBarcode(borrow.getCopy().getBarcode());
		c.setStatus(borrow.getCopy().getStatus());
		c.setBorrowed(false);
		copyDAO.update(c);

		// 如果损坏，跳转到罚款页面
		if (borrow.getCopy().getStatus().equals("损坏")) {
			Fault fault = new Fault();
			fault.setFine(b.getCopy().getBook().getPrice());
			fault.setType("损坏图书");
			fault.setCopy(c);
			return fault;
		}
		// 如果超期，跳转到罚款页面
		if (new Date(System.currentTimeMillis()).after(b.getShouldReturnTime())) {
			Fault fault = new Fault();
			//根据天数计算罚款
			long intervalMilli = new Date(System.currentTimeMillis()).getTime()-b.getShouldReturnTime().getTime();
			int day=(int) (intervalMilli / (24 * 60 * 60 * 1000));
			fault.setType("超期");
			fault.setFine(day*0.1);
			fault.setCopy(c);
			return fault;
		}
		return new Fault();
		// if (borrow.getCopy().getStatus().equals("损坏")) {
		// Fault fault = new Fault();
		// fault.setCopy(c);
		// fault.setUser(b.getUser());
		// fault.setTime(new Date(System.currentTimeMillis()));
		// fault.setType("损坏图书");
		// fault.setFine(b.getCopy().getBook().getPrice() * 0.5);
		// faultDAO.save(fault);
		// }
	}

	@Override
	public void loseBook(Borrow borrow) {
		// 根据id取到借阅记录
		borrow = borrowDAO.getById(borrow.getId());
		// 首先将修改借阅记录
		borrow.setHaveReturned(true);
		borrow.setRealReturnTime(new Date(System.currentTimeMillis()));
		borrowDAO.update(borrow);
		// 然后修改副本状态，损坏或是良好，并且修改借出状态
		Copy c = borrow.getCopy();
		c.setStatus("丢失");
		c.setBorrowed(false);
		copyDAO.update(c);

		// 添加一条违章记录
		Fault fault = new Fault();
		fault.setCopy(c);
		fault.setUser(borrow.getUser());
		fault.setTime(new Date(System.currentTimeMillis()));
		fault.setType("丢失图书");
		fault.setFine(borrow.getCopy().getBook().getPrice() * 2);
		faultDAO.save(fault);

	}
	
	@Override
	public boolean renew(Borrow borrow) {
		borrow = borrowDAO.getById(borrow.getId());
		if(borrow.isHaveReturned())
			return false;
		if(borrow.getRenewTimes()>=1)
			return false;
		borrow.setRenewTimes(borrow.getRenewTimes()+1);
		Date shouldReturnTime=borrow.getShouldReturnTime();
		Calendar cal = Calendar.getInstance();
		cal.setTime(shouldReturnTime);
		cal.add(Calendar.MONTH, 1);
		shouldReturnTime = cal.getTime();
		borrow.setShouldReturnTime(shouldReturnTime);
		
		borrowDAO.update(borrow);
		return true;
	}

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public CopyDAO getCopyDAO() {
		return copyDAO;
	}

	public void setCopyDAO(CopyDAO copyDAO) {
		this.copyDAO = copyDAO;
	}

	public FaultDAO getFaultDAO() {
		return faultDAO;
	}

	public void setFaultDAO(FaultDAO faultDAO) {
		this.faultDAO = faultDAO;
	}
}
