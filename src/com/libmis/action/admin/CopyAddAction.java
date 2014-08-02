package com.libmis.action.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Copy;
import com.libmis.service.CopyService;
import com.opensymphony.xwork2.ActionSupport;

@Component("copyAdd")
@Scope("prototype")
public class CopyAddAction extends ActionSupport{
	
	private Copy copy;
	private String isbn;
	
	@Autowired
	private CopyService copyService;
	
	@Override
	public String execute() throws Exception {
		int result=copyService.save(copy,isbn).hashCode();
		if(result==0)
			return ERROR;
		return SUCCESS;
	}

	public Copy getCopy() {
		return copy;
	}

	public void setCopy(Copy copy) {
		this.copy = copy;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public CopyService getCopyService() {
		return copyService;
	}

	public void setCopyService(CopyService copyService) {
		this.copyService = copyService;
	}
}
