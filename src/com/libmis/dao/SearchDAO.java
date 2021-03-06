package com.libmis.dao;

import java.io.Serializable;
import java.util.List;

import com.libmis.model.Search;

public interface SearchDAO {
	
	Serializable save(Search search);
	
	void delete(Search search);
		
	List<Search> list(int startResult,int maxResult);
	
	List<Search> listByUsername(String username,int startResult,int maxResult);
			
	int getResultSize();
	
	int getResultSize(String username);

	void update(Search b);

	List<Search> listByUserId(int id);
	
}
