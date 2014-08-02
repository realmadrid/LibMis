package com.libmis.action.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Borrow;
import com.libmis.service.BorrowService;
import com.opensymphony.xwork2.ActionSupport;

@Component("lose")
@Scope("prototype")
public class LoseAction  extends ActionSupport{
	
	private Borrow borrow;
	
	@Autowired
	private BorrowService borrowService;
	
	@Override
	public String execute() throws Exception {
		borrowService.loseBook(borrow);
		return SUCCESS;
	}

	public Borrow getBorrow() {
		return borrow;
	}

	public void setBorrow(Borrow borrow) {
		this.borrow = borrow;
	}

	public BorrowService getBorrowService() {
		return borrowService;
	}

	public void setBorrowService(BorrowService borrowService) {
		this.borrowService = borrowService;
	}

}
