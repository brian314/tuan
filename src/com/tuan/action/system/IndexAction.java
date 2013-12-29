package com.tuan.action.system;

import org.apache.log4j.Logger;

import com.tuan.action.BaseAction;

public class IndexAction extends BaseAction {
	private static final Logger logger = Logger.getLogger(IndexAction.class);
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		logger.info("in system/index.do................");
		return SUCCESS;
	}
	
	public String test(){	
		return "JSON";
	}
	

}
