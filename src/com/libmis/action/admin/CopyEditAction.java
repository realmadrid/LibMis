package com.libmis.action.admin;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Copy;
import com.libmis.service.CopyService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.KeyProperty;

@Component("copyEdit")
@Scope("prototype")
public class CopyEditAction extends ActionSupport{
	
	@KeyProperty
	private Set<Copy> copys=new HashSet<Copy>();
	
	private int bookId;
	
	@Autowired
	private CopyService copyService;
	
	@Override
	public String execute() throws Exception {
		copyService.update(copys);
		return SUCCESS;
	}

	public Set<Copy> getCopys() {
		return copys;
	}

	public void setCopys(Set<Copy> copys) {
		this.copys = copys;
	}

	public CopyService getCopyService() {
		return copyService;
	}

	public void setCopyService(CopyService copyService) {
		this.copyService = copyService;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

}
