package com.libmis.service;

import java.io.Serializable;
import java.util.List;

import com.libmis.model.Authority;
import com.libmis.model.Role;

public interface RoleService {
	
	Serializable save(Role role,String[] authorityIds);
	
	void delete(Role role);
	
	void update(Role role,String[] authorityIds);
	
	List<Role> list();
		
	Role getById(int id);
	
	int getResultSize();

	List<Authority> listAuthority();
}
