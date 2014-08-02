package com.libmis.action.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.libmis.model.Fault;
import com.libmis.service.FaultService;
import com.opensymphony.xwork2.ActionSupport;

@Component("faultAdd")
@Scope("prototype")
public class FaultAddAction  extends ActionSupport{
	
	private Fault fault;
	
	@Autowired
	private FaultService FaultService;
	
	@Override
	public String execute() throws Exception {
		int i= FaultService.save(fault).hashCode();
		if(i==0)
			return ERROR;
		return SUCCESS;
	}

	public Fault getFault() {
		return fault;
	}

	public void setFault(Fault fault) {
		this.fault = fault;
	}

	public FaultService getFaultService() {
		return FaultService;
	}

	public void setFaultService(FaultService faultService) {
		FaultService = faultService;
	}
}
