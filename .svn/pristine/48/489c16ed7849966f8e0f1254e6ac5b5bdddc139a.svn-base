package com.libmis.action.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Authority;
import com.libmis.model.Role;
import com.libmis.service.RoleService;
import com.opensymphony.xwork2.ActionSupport;

@Component("roleEdit")
@Scope("prototype")
public class RoleEditAction extends ActionSupport{
	
	private String[] authorityIds;
	private Role role;
	
	@Autowired
	private RoleService roleService;
	
	@Override
	public String execute() throws Exception {
		roleService.update(role, authorityIds);
		return SUCCESS;
	}

	public String[] getAuthorityIds() {
		return authorityIds;
	}

	public void setAuthorityIds(String[] authorityIds) {
		this.authorityIds = authorityIds;
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
}
