package com.libmis.action.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Borrow;
import com.libmis.service.BorrowService;
import com.opensymphony.xwork2.ActionSupport;

@Component("loseInput")
@Scope("prototype")
public class LoseInputAction  extends ActionSupport{
	
	private String username;
	List<Borrow> borrows;
	
	@Autowired
	private BorrowService borrowService;
	
	@Override
	public String execute() throws Exception {
		borrows=borrowService.listByUsernameAndHaveReturned(username, false,0,100);
		return SUCCESS;
	}

	public BorrowService getBorrowService() {
		return borrowService;
	}

	public void setBorrowService(BorrowService borrowService) {
		this.borrowService = borrowService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public List<Borrow> getBorrows() {
		return borrows;
	}

	public void setBorrows(List<Borrow> borrows) {
		this.borrows = borrows;
	}
}
