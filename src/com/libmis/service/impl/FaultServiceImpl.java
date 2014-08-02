package com.libmis.service.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.libmis.dao.CopyDAO;
import com.libmis.dao.FaultDAO;
import com.libmis.dao.UserDAO;
import com.libmis.model.Copy;
import com.libmis.model.Fault;
import com.libmis.model.User;
import com.libmis.service.FaultService;

@Component("faultService")
public class FaultServiceImpl implements FaultService{
	
	@Autowired
	private FaultDAO faultDAO;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private CopyDAO copyDAO;
	
	@Override
	public void delete(Fault fault) {
		faultDAO.delete(fault);
	}

	@Override
	public Fault getById(int id) {
		return faultDAO.getById(id);
	}

	@Override
	public int getResultSize() {
		return faultDAO.getResultSize();
	}

	//这个方法用于普通用户查询自己的违章记录
	@Override
	public int getResultSize(String username) {
		return faultDAO.getResultSize(username);
	}

	@Override
	public List<Fault> list(int startResult, int maxResult) {
		return faultDAO.list(startResult, maxResult);
	}
	
	//这个方法用于普通用户查询自己的违章记录
	@Override
	public List<Fault> listByUsername(String username, int startResult,
			int maxResult) {
		return faultDAO.listByUsername(username, startResult, maxResult);
	}

	@Override
	public Serializable save(Fault fault) {
		User user=userDAO.getbyUsername(fault.getUser().getUsername());
		if(user==null)
			return 0;
		fault.setUser(user);
		Copy copy=copyDAO.getByBarcode(fault.getCopy().getBarcode());
		fault.setCopy(copy);
		fault.setTime(new Date(System.currentTimeMillis()));
		return faultDAO.save(fault);
	}

	@Override
	public void update(Fault fault) {
		faultDAO.update(fault);
	}

	public FaultDAO getFaultDAO() {
		return faultDAO;
	}

	public void setFaultDAO(FaultDAO faultDAO) {
		this.faultDAO = faultDAO;
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

}
