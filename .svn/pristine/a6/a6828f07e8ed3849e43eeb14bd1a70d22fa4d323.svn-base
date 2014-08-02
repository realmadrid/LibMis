package com.libmis.service;

import java.io.Serializable;
import java.util.List;

import com.libmis.model.Borrow;
import com.libmis.model.Fault;

public interface BorrowService {
	
	Serializable save(Borrow borrow);
	
	void delete(Borrow borrow);
	
	void update(Borrow borrow);
	
	List<Borrow> list(int startResult,int maxResult);
	
	List<Borrow> listByUsernameAndHaveReturned(String username,boolean haveReturned,int startResult,int maxResult);
	
	Borrow getById(int id);
	
	int getResultSize();
	
	int getResultSize(String username,boolean haveReturned);

	Fault returnBook(Borrow borrow);

	void loseBook(Borrow borrow);
	
	boolean renew(Borrow borrow);

}
