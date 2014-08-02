package com.libmis.action.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.User;
import com.libmis.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@Component("userAdd")
@Scope("prototype")
public class UserAddAction extends ActionSupport{
	
	private String[] roleIds;
	private User User;
	
	@Autowired
	private UserService userService;
	
	@Override
	public String execute() throws Exception {
		int i=userService.save(User, roleIds).hashCode();
		if(i==0)
			return ERROR;
		return SUCCESS;
	}

	public String[] getRoleIds() {
		return roleIds;
	}

	public void setRoleIds(String[] roleIds) {
		this.roleIds = roleIds;
	}

	public User getUser() {
		return User;
	}

	public void setUser(User user) {
		User = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
}
