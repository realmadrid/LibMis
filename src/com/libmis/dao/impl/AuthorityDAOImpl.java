package com.libmis.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.libmis.dao.AuthorityDAO;
import com.libmis.model.Authority;
import com.libmis.util.MyHibernateTemplate;

@Component("authorityDAO")
public class AuthorityDAOImpl implements AuthorityDAO{
	
	@Autowired
	private MyHibernateTemplate hibernateTemplate;

	public MyHibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(MyHibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public Authority getById(int id) {
		return this.hibernateTemplate.load(Authority.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Authority> list() {
		return this.hibernateTemplate.find("from Authority");
	}


}
