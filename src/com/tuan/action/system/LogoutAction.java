package com.tuan.action.system;

import org.apache.log4j.Logger;

import com.tuan.action.BaseAction;

public class LogoutAction extends BaseAction {
	private static final Logger logger = Logger.getLogger(LogoutAction.class);

	@Override
	public String execute() throws Exception {
		return LOGIN;
	}
	
	
	public String doLogout() throws Exception{
	    getRequest().getSession().removeAttribute("admin");
		return SUCCESS;
	}

}
