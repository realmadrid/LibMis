package com.libmis.action.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.User;
import com.libmis.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@Component("userInfo")
@Scope("prototype")
public class UserInfoAction extends ActionSupport{
	
	private User user;
	
	@Autowired
	private UserService UserService;
	
	@Override
	public String execute() throws Exception {
		user=UserService.getById(user.getId());
		return SUCCESS;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return UserService;
	}

	public void setUserService(UserService userService) {
		UserService = userService;
	}


}
