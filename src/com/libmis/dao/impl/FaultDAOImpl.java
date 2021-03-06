package com.libmis.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.libmis.dao.FaultDAO;
import com.libmis.model.Fault;
import com.libmis.util.MyHibernateTemplate;

@Component("faultDAO")
public class FaultDAOImpl implements FaultDAO{
	
	@Autowired
	private MyHibernateTemplate hibernateTemplate;

	public MyHibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(MyHibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public void delete(Fault fault) {
		this.hibernateTemplate.delete(fault);
	}

	@Override
	public Fault getById(int id) {
		return this.hibernateTemplate.load(Fault.class, id);
	}

	@Override
	public int getResultSize() {
		return this.hibernateTemplate.getResultSize("select count(*) from  Fault");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Fault> list(int startResult, int maxResult) {
		return this.hibernateTemplate.find("from Fault f order by f.time desc",startResult,maxResult);
	}

	@Override
	public Serializable save(Fault fault) {
		return this.hibernateTemplate.save(fault);
	}

	@Override
	public void update(Fault fault) {
		this.hibernateTemplate.update(fault);
	}

	@Override
	public int getResultSize(String username) {
		return this.hibernateTemplate.getResultSize("select count(*) from  Fault f where f.user.username=?",username);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Fault> listByUsername(String username, int startResult,
			int maxResult) {
		return this.hibernateTemplate.find("from Fault f where f.user.username=? order by f.time desc",startResult,maxResult,username);

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Fault> listByIdCopyId(int id) {
		return this.hibernateTemplate.find("from Fault f where f.copy.id=?",id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Fault> listByUserId(int id) {
		return this.hibernateTemplate.find("from Fault f where f.user.id=?",id);

	}


}
