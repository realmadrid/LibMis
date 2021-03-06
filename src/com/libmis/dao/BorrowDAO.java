package com.libmis.dao;

import java.io.Serializable;
import java.util.List;

import com.libmis.model.Borrow;

public interface BorrowDAO {

	Serializable save(Borrow borrow);
	
	void delete(Borrow borrow);
	
	void update(Borrow borrow);
	
	List<Borrow> list(int startResult,int maxResult);
	
	List<Borrow> listByUsernameAndHaveReturned(String username,boolean haveReturned,int startResult,int maxResult);
	
	Borrow getById(int id);
	
	int getResultSize();
	
	int getResultSize(String username,boolean haveReturned);

	Borrow getByBarcode(String barcode);

	List<Borrow> listByIdCopyId(int id);

	List<Borrow> listByUserId(int id);
}
