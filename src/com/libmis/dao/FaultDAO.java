package com.libmis.dao;

import java.io.Serializable;
import java.util.List;

import com.libmis.model.Fault;

public interface FaultDAO {
	
	Serializable save(Fault fault);
	
	void delete(Fault fault);
	
	void update(Fault fault);
	
	List<Fault> list(int startResult,int maxResult);
	
	List<Fault> listByUsername(String username,int startResult,int maxResult);
		
	Fault getById(int id);
	
	int getResultSize();
	
	int getResultSize(String username);

	List<Fault> listByIdCopyId(int id);

	List<Fault> listByUserId(int id);
	
}
