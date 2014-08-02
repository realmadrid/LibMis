package com.libmis.service;

import java.io.Serializable;
import java.util.List;

import com.libmis.model.Fault;

public interface FaultService {
	
	Serializable save(Fault fault);
	
	void delete(Fault fault);
	
	void update(Fault fault);
	
	List<Fault> list(int startResult,int maxResult);
	
	List<Fault> listByUsername(String username,int startResult,int maxResult);
		
	Fault getById(int id);
	
	int getResultSize();
	
	int getResultSize(String username);
	
}
