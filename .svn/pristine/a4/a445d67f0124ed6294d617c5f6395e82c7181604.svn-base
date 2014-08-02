package com.libmis.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.libmis.dao.UserDAO;
import com.libmis.model.User;
import com.libmis.util.MyArrayUtils;
import com.libmis.util.MyHibernateTemplate;

@Component("")
public class UserDAOImpl implements UserDAO{
	
	@Autowired
	private MyHibernateTemplate hibernateTemplate;

	public MyHibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(MyHibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public void delete(User user) {
		this.hibernateTemplate.delete(user);
	}

	@Override
	public User getById(int id) {
		return this.hibernateTemplate.load(User.class, id);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public User getbyUsername(String username) {
		List<User> list=this.hibernateTemplate.find("from User u where u.username=?",username);
		if(list.size()>0)
			return list.get(0);
		return null;
	}


	@Override
	public int getResultSize() {
		return this.hibernateTemplate.getResultSize("select count(*) from User");
	}

	@Override
	public int getSearchResultSize(String query, String... fields) {
		if (!MyArrayUtils.isEmpty(fields)) {
			return this.hibernateTemplate.getSearchResultSize(User.class, query, fields);
		}
		return this.hibernateTemplate.getSearchResultSize(User.class, query,"username","realname","idnumber","sex","cellphone","email","address","roles.name");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> list(int startResult, int maxResult) {
		return this.hibernateTemplate.find("from User",startResult,maxResult);
	}

	@Override
	public Serializable save(User user) {
		return this.hibernateTemplate.save(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> search(String query, int startResult, int maxResult,
			String... fields) {
		if (!MyArrayUtils.isEmpty(fields)) {
			return this.hibernateTemplate.highLightSearch(User.class,query , startResult, maxResult, fields);
		}
		return this.hibernateTemplate.highLightSearch(User.class, query,startResult, maxResult,"username","realname","idnumber","sex","cellphone","email","address","roles.name");
	}

	@Override
	public void update(User user) {
		this.hibernateTemplate.update(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public User getbyIdnumber(String idnumber) {
		List<User> list=this.hibernateTemplate.find("from User u where u.idnumber=?",idnumber);
		if(list.size()>0)
			return list.get(0);
		return null;
	}

}
