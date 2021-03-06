package com.libmis.dao;

import java.io.Serializable;
import java.util.List;

import com.libmis.model.Book;

public interface BookDAO {
	
	Serializable save(Book book);
	
	void delete(Book book);
	
	void update(Book book);
	
	List<Book> list(int startResult,int maxResult);
	
	List<Book> search(String query,int startResult,int maxResult,String... fields);
	
	Book getById(int id);
	
	int getResultSize();
	
	int getSearchResultSize(String query,String... fields);

	Book getByIsbn(String isbn);


}
