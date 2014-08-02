package com.libmis.action.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.User;
import com.libmis.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@Component("userDelete")
@Scope("prototype")
public class UserDeleteAction extends ActionSupport{
	
	private User User;
	
	@Autowired
	private UserService userService;
	
	@Override
	public String execute() throws Exception {
		userService.delete(User);
		return SUCCESS;
	}

	public User getUser() {
		return User;
	}

	public void setUser(User User) {
		this.User = User;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
}
