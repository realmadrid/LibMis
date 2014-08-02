package com.libmis.service;

import java.io.Serializable;
import java.util.List;

import com.libmis.model.Book;

public interface BookService {
	
	Serializable save(Book book);
	
	void delete(Book book);
	
	void update(Book book);
	
	Book getById(int id);
	
	List<Book> search(String query,int startResult,int maxResult,String... fields);

	int getSearchResultSize(String query,String... fields);

}
