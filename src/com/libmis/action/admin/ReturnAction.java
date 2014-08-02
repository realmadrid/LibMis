package com.libmis.action.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Borrow;
import com.libmis.model.Fault;
import com.libmis.service.BorrowService;
import com.opensymphony.xwork2.ActionSupport;

@Component("return")
@Scope("prototype")
public class ReturnAction  extends ActionSupport{
	
	private Borrow borrow;
	private Fault fault;
	
	@Autowired
	private BorrowService borrowService;
	
	@Override
	public String execute() throws Exception {
		fault=borrowService.returnBook(borrow);
		if(fault==null)
			return ERROR;
		if(fault.getType()==null)
			return SUCCESS;
		return "fault";
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

	public Fault getFault() {
		return fault;
	}

	public void setFault(Fault fault) {
		this.fault = fault;
	}
}
