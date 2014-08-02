package com.libmis.action.front;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.User;
import com.libmis.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@Component("UserInfoEdit")
@Scope("prototype")
public class UserInfoEditAction extends ActionSupport {
	
	private User user;
	
	@Autowired
	private UserService userService;
	
	@Override
	public String execute() throws Exception {
		if(!userService.updateUserInfo(user)){
			return ERROR;
		}
		return SUCCESS;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
