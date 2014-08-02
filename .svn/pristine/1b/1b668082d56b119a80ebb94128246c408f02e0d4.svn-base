package com.libmis.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.libmis.dao.RoleDAO;
import com.libmis.model.Role;
import com.libmis.util.MyHibernateTemplate;

@Component("roleDAO")
public class RoleDAOImpl implements RoleDAO{
	
	@Autowired
	private MyHibernateTemplate hibernateTemplate;

	public MyHibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(MyHibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public void delete(Role role) {
		this.hibernateTemplate.delete(role);
	}

	@Override
	public Role getById(int id) {
		return this.hibernateTemplate.load(Role.class, id);
	}

	@Override
	public int getResultSize() {
		return this.hibernateTemplate.getResultSize("select count(*) from Role");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Role> list() {
		return this.hibernateTemplate.find("from Role");
	}

	@Override
	public Serializable save(Role role) {
		return this.hibernateTemplate.save(role);
	}

	@Override
	public void update(Role role) {
		this.hibernateTemplate.update(role);
	}

}
