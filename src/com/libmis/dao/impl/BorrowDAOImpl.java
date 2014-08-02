package com.libmis.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.libmis.dao.BorrowDAO;
import com.libmis.model.Borrow;
import com.libmis.util.MyHibernateTemplate;

@Component("borrowDAO")
public class BorrowDAOImpl implements BorrowDAO{
	
	@Autowired
	private MyHibernateTemplate hibernateTemplate;

	public MyHibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	
	public void setHibernateTemplate(MyHibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public void delete(Borrow borrow) {
		this.hibernateTemplate.delete(borrow);
	}

	@Override
	public Borrow getById(int id) {
		return this.hibernateTemplate.load(Borrow.class, id);
	}

	@Override
	public int getResultSize() {
		return this.hibernateTemplate.getResultSize("select count(*) from Borrow");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Borrow> list(int startResult, int maxResult) {
		return this.hibernateTemplate.find("from Borrow",startResult,maxResult);
	}

	@Override
	public Serializable save(Borrow borrow) {
		return this.hibernateTemplate.save(borrow);
	}

	@Override
	public void update(Borrow borrow) {
		this.hibernateTemplate.update(borrow);
	}

	@Override
	public int getResultSize(String username, boolean haveReturned) {
		return this.hibernateTemplate.getResultSize("select count(*) from Borrow b where b.user.username=? and b.haveReturned=?",username,haveReturned);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Borrow> listByUsernameAndHaveReturned(String username,
			boolean haveReturned, int startResult, int maxResult) {
		return this.hibernateTemplate.find("from Borrow b where b.user.username=? and b.haveReturned=?",username,haveReturned);
	}

	//此方法返回的是根据条码号，并且未被归还的书！！！！！！！
	@SuppressWarnings("unchecked")
	@Override
	public Borrow getByBarcode(String barcode) {
		List<Borrow> list=this.hibernateTemplate.find("from Borrow b where b.copy.barcode=? and b.haveReturned=?",barcode,false);
		if(list.size()>0)
			return list.get(0);
		return null;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Borrow> listByIdCopyId(int id) {
		return this.hibernateTemplate.find("from Borrow b where b.copy.id=?",id);
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Borrow> listByUserId(int id) {
		return this.hibernateTemplate.find("from Borrow b where b.user.id=?",id);
	}


}
