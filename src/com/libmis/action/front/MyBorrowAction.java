package com.libmis.action.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Borrow;
import com.libmis.model.User;
import com.libmis.service.BorrowService;
import com.libmis.util.Page;
import com.libmis.util.SpringSecurityUtils;
import com.opensymphony.xwork2.ActionSupport;


@Component("myBorrow")
@Scope("prototype")
public class MyBorrowAction extends ActionSupport{
	
	private List<Borrow> borrows;
	
	private Page page;
	
	@Autowired
	private BorrowService borrowService;
	
	@Override
	public String execute() throws Exception {
		if(page==null)
			page=new Page();
		borrows = borrowService.listByUsernameAndHaveReturned(SpringSecurityUtils.getCurrentUserName(), false, page.getStart(), page.getPageSize());
		return SUCCESS;
	}

	public List<Borrow> getBorrows() {
		return borrows;
	}

	public void setBorrows(List<Borrow> borrows) {
		this.borrows = borrows;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public BorrowService getBorrowService() {
		return borrowService;
	}

	public void setBorrowService(BorrowService borrowService) {
		this.borrowService = borrowService;
	}

}
