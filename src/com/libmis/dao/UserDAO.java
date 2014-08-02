package com.libmis.dao;

import java.io.Serializable;
import java.util.List;

import com.libmis.model.User;

public interface UserDAO {
	
	Serializable save(User user);
	
	void delete(User user);
	
	void update(User user);
	
	List<User> list(int startResult,int maxResult);
	
	List<User> search(String query,int startResult,int maxResult,String... fields);
	
	User getById(int id);
	
	User getbyUsername(String username);
	
	int getResultSize();
	
	int getSearchResultSize(String query,String... fields);

	User getbyIdnumber(String idnumber);


}
