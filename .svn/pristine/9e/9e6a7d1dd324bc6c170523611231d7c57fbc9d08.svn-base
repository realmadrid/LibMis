package com.libmis.action.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Role;
import com.libmis.service.RoleService;
import com.opensymphony.xwork2.ActionSupport;

@Component("roleList")
@Scope("prototype")
public class RoleListAction extends ActionSupport{
	
	private List<Role> roles;
	
	@Autowired
	private RoleService roleService;
	
	@Override
	public String execute() throws Exception {
		roles=roleService.list();
		return SUCCESS;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}
}
