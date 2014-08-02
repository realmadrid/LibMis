package com.libmis.action.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Authority;
import com.libmis.model.Role;
import com.libmis.model.User;
import com.libmis.service.RoleService;
import com.libmis.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@Component("userEditInput")
@Scope("prototype")
public class UserEditInputAction extends ActionSupport{
	
	private User User;
	private List<Role> roles;
	
	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	
	@Override
	public String execute() throws Exception {
		User=userService.getById(User.getId());
		roles=roleService.list();
		return SUCCESS;
	}

	public User getUser() {
		return User;
	}

	public void setUser(User User) {
		this.User = User;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}
}
