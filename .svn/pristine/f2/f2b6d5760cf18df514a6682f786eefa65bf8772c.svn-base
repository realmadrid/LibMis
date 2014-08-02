package com.libmis.action.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Fault;
import com.libmis.model.User;
import com.libmis.service.FaultService;
import com.libmis.util.Page;
import com.libmis.util.SpringSecurityUtils;
import com.opensymphony.xwork2.ActionSupport;

@Component("userFault")
@Scope("prototype")
public class UserFaultAction extends ActionSupport{
	
	private List<Fault> faults;
	
	private Page page;
	
	@Autowired
	private FaultService faultService;
	
	@Override
	public String execute() throws Exception {
		if(page==null)
			page=new Page();
		faults = faultService.listByUsername(SpringSecurityUtils.getCurrentUserName(), page.getStart(), page.getPageSize());
		return SUCCESS;
	}

	public List<Fault> getFaults() {
		return faults;
	}

	public void setFaults(List<Fault> faults) {
		this.faults = faults;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public FaultService getFaultService() {
		return faultService;
	}

	public void setFaultService(FaultService faultService) {
		this.faultService = faultService;
	}

}
