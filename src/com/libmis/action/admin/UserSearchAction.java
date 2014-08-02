package com.libmis.action.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Role;
import com.libmis.model.User;
import com.libmis.service.RoleService;
import com.libmis.service.UserService;
import com.libmis.util.Page;
import com.opensymphony.xwork2.ActionSupport;

@Component("userSearch")
@Scope("prototype")
public class UserSearchAction extends ActionSupport{
	
	private List<User> users;
	
	private Page page;
	private String query;
	
	@Autowired
	private UserService userService;
	
	@Override
	public String execute() throws Exception {
		if (page == null)
			page = new Page();
		page.setTotalCount(userService.getSearchResultSize(query));
		users=userService.search(query, page.getStart(), page.getPageSize());
		return SUCCESS;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public String getQuery() {
		return query;
	}

	public void setQuery(String query) {
		this.query = query;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
}
