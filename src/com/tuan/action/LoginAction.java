package com.tuan.action;

import java.text.MessageFormat;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.tuan.entity.Admin;
import com.tuan.manager.AdminManager;
import com.tuan.utils.Constants;

public class LoginAction extends BaseAction {
	private static final Logger logger = Logger.getLogger(LoginAction.class);
	
	private String account;
	private String password;


	@Override
	public String execute() throws Exception {
		return LOGIN;
	}
	
	
	public String doLogin() throws Exception{
	    AdminManager adminManager = (AdminManager)getBean("adminManager");
		Admin admin = adminManager.doLogin(new Admin(account,password,1));
		
		if(admin==null){
			//this.addFieldError("result", "帐号或者密码错误！");
			this.addActionMessage("帐号或者密码错误！！！");
			return LOGIN;
		}else{
			ServletActionContext.getRequest().getSession().setAttribute("admin", admin);
		}
		return SUCCESS;
	}
	
	public String doLoginAjax() throws Exception{
	    AdminManager adminManager = (AdminManager)getBean("adminManager");
		Admin admin = adminManager.doLogin(new Admin(account,password,1));
		
		if(admin==null){
			getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_ERROR,"帐号或者密码错误！","main","","",""));
		}else{
			ServletActionContext.getRequest().getSession().setAttribute("admin", admin);
		}
		getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_DONE,"登录成功！","site","","closeCurrent",""));
		return Constants.AJAX_RESULT;
	}


	@Override
	public void validate() {
		if(this.getAccount()==null || "".equals(this.getAccount().trim())){
			this.addFieldError("account","帐号不能为空");
		}
		if(this.getPassword()==null || "".equals(this.getPassword().trim())){
			this.addFieldError("password","密码不能为空");
		}
	}


	public String getAccount() {
		return account;
	}


	public void setAccount(String account) {
		this.account = account;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

}
