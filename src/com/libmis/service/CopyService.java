package com.libmis.service;

import java.io.Serializable;
import java.util.Set;

import com.libmis.model.Copy;

public interface CopyService {

	Serializable save(Copy copy,String isbn);
	
	void delete(Copy copy,int bookId);
	
	void update(Copy copy);
	
	void update(Set<Copy> copys);
			
	Copy getById(int id);
}
