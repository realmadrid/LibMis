package com.libmis.service.impl;

import java.io.Serializable;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.libmis.dao.SearchDAO;
import com.libmis.dao.UserDAO;
import com.libmis.model.Search;
import com.libmis.model.User;
import com.libmis.service.SearchService;

@Component("searchService")
public class SearchServiceImpl implements SearchService{
	
	@Autowired
	private SearchDAO searchDAO;
	@Autowired
	private UserDAO userDAO;

	@Override
	public void delete(Search search) {
		searchDAO.delete(search);
	}

	@Override
	public int getResultSize() {
		return searchDAO.getResultSize();
	}

	@Override
	public int getResultSize(String username) {
		return searchDAO.getResultSize(username);
	}

	@Override
	public List<Search> list(int startResult, int maxResult) {
		return searchDAO.list(startResult, maxResult);
	}

	@Override
	public List<Search> listByUsername(String username, int startResult,
			int maxResult) {
		return searchDAO.listByUsername(username, startResult, maxResult);
	}

	@Override
	public Serializable save(Search search) {
		if(StringUtils.isBlank(search.getContent()))
			return 0;
		return searchDAO.save(search);
	}

	public SearchDAO getSearchDAO() {
		return searchDAO;
	}

	public void setSearchDAO(SearchDAO searchDAO) {
		this.searchDAO = searchDAO;
	}

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
}
