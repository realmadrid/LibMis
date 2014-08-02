package com.libmis.action.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Authority;
import com.libmis.model.Role;
import com.libmis.service.RoleService;
import com.opensymphony.xwork2.ActionSupport;

@Component("roleEditInput")
@Scope("prototype")
public class RoleEditInputAction extends ActionSupport{
	
	private Role role;
	private List<Authority> authorities;
	
	@Autowired
	private RoleService roleService;
	
	@Override
	public String execute() throws Exception {
		role=roleService.getById(role.getId());
		authorities=roleService.listAuthority();
		return SUCCESS;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public List<Authority> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(List<Authority> authorities) {
		this.authorities = authorities;
	}
}
