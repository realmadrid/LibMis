package com.libmis.action.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Authority;
import com.libmis.model.Book;
import com.libmis.service.BookService;
import com.libmis.service.RoleService;
import com.opensymphony.xwork2.ActionSupport;

@Component("roleAddInput")
@Scope("prototype")
public class RoleAddInputAction extends ActionSupport{
	
	private List<Authority> authorities;
	
	@Autowired
	private RoleService roleService;
	
	@Override
	public String execute() throws Exception {
		authorities=roleService.listAuthority();
		return SUCCESS;
	}

	public List<Authority> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(List<Authority> authorities) {
		this.authorities = authorities;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}
}
