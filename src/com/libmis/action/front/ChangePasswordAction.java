package com.libmis.action.front;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.service.UserService;
import com.libmis.util.SpringSecurityUtils;
import com.opensymphony.xwork2.ActionSupport;

@Component("changePassword")
@Scope("prototype")
public class ChangePasswordAction extends ActionSupport {
	
	private String oldPassword;
	
	private String newPassword;
	
	private String confirmPassword;
	
	private String username = SpringSecurityUtils.getCurrentUserName();
	
	@Autowired
	private UserService userService;
	
	@Override
	public String execute() throws Exception {
		if (StringUtils.isBlank(oldPassword)) {
			this.addFieldError("oldPassword", "原密码不能为空!");
			return INPUT;
		}
		if (StringUtils.isBlank(newPassword)) {
			this.addFieldError("newPassword", "新密码不能为空!");
			return INPUT;
		}
		if (StringUtils.isBlank(confirmPassword)) {
			this.addFieldError("confirmPassword", "确认密码不能为空!");
			return INPUT;
		}
		if (!newPassword.equals(confirmPassword)) {
			this.addFieldError("confirmPassword", "新密码两次输入不一致!");
			return INPUT;
		}

		if (!userService.changePassword(username, oldPassword, newPassword)) {
			this.addFieldError("oldPassword", "原密码输入错误!");
			return INPUT;
		}
		return SUCCESS;
	}

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
