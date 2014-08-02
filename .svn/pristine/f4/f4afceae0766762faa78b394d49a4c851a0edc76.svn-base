package com.libmis.service.impl;

import java.io.Serializable;
import java.util.List;

import org.apache.commons.lang.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.libmis.dao.AuthorityDAO;
import com.libmis.dao.RoleDAO;
import com.libmis.model.Authority;
import com.libmis.model.Role;
import com.libmis.service.RoleService;

@Component("roleService")
public class RoleServiceImpl implements RoleService{
	
	@Autowired
	private RoleDAO roleDAO;
	@Autowired
	private AuthorityDAO authorityDAO;

	@Override
	public void delete(Role role) {
		role=roleDAO.getById(role.getId());
		role.getAuthorities().removeAll(role.getAuthorities());
		roleDAO.delete(role);
	}

	@Override
	public Role getById(int id) {
		return roleDAO.getById(id);
	}

	@Override
	public int getResultSize() {
		return roleDAO.getResultSize();
	}

	@Override
	public List<Role> list() {
		return roleDAO.list();
	}

	@Override
	public Serializable save(Role role,String[] authorityIds) {
		if(!ArrayUtils.isEmpty(authorityIds)){
			for(String s:authorityIds){
				Authority a=authorityDAO.getById(Integer.parseInt(s));
				role.getAuthorities().add(a);
			}
		}
		return roleDAO.save(role);
	}

	@Override
	public void update(Role role,String[] authorityIds) {
		if(!ArrayUtils.isEmpty(authorityIds)){
			for(String s:authorityIds){
				Authority a=authorityDAO.getById(Integer.parseInt(s));
				role.getAuthorities().add(a);
			}
		}
		roleDAO.update(role);
	}

	public RoleDAO getRoleDAO() {
		return roleDAO;
	}

	public void setRoleDAO(RoleDAO roleDAO) {
		this.roleDAO = roleDAO;
	}

	public AuthorityDAO getAuthorityDAO() {
		return authorityDAO;
	}

	public void setAuthorityDAO(AuthorityDAO authorityDAO) {
		this.authorityDAO = authorityDAO;
	}

	@Override
	public List<Authority> listAuthority() {
		return authorityDAO.list();
	}

}
