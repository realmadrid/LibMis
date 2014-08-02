package com.libmis.action.front;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.User;
import com.libmis.service.UserService;
import com.libmis.util.SpringSecurityUtils;
import com.opensymphony.xwork2.ActionSupport;

@Component("personInfo")
@Scope("prototype")
public class UserInfoAction extends ActionSupport{
	
	private User user;
	
	@Autowired
	private UserService UserService;
	
	@Override
	public String execute() throws Exception {
		user=UserService.getByName(SpringSecurityUtils.getCurrentUserName());
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
