package com.libmis.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.libmis.dao.SearchDAO;
import com.libmis.model.Search;
import com.libmis.util.MyHibernateTemplate;

@Component("searchDAO")
public class SearchDAOImpl implements SearchDAO{
	
	@Autowired
	private MyHibernateTemplate hibernateTemplate;

	public MyHibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(MyHibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public void delete(Search search) {
		this.hibernateTemplate.delete(search);
	}

	@Override
	public int getResultSize() {
		return this.hibernateTemplate.getResultSize("select count(*) from Search");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Search> list(int startResult, int maxResult) {
		return this.hibernateTemplate.find("from Search s order by s.time desc",startResult,maxResult);
	}

	@Override
	public Serializable save(Search search) {
		return this.hibernateTemplate.save(search);
	}

	@Override
	public int getResultSize(String username) {
		return this.hibernateTemplate.getResultSize("select count(*) from Search s where s.user.username=?",username);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Search> listByUsername(String username, int startResult,
			int maxResult) {
		return this.hibernateTemplate.find("from Search s where s.user.username=? order by s.time desc",startResult,maxResult,username);

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Search> listByUserId(int id) {
		return this.hibernateTemplate.find("from Search s where s.user.id=?",id);
	}

	@Override
	public void update(Search b) {
		this.hibernateTemplate.update(b);
	}


}
