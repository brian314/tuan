package com.tuan.action.system;

import java.text.MessageFormat;

import org.apache.commons.lang.xwork.StringUtils;
import org.apache.log4j.Logger;

import com.tuan.entity.Admin;
import com.tuan.manager.AdminManager;
import com.tuan.utils.Constants;
import com.tuan.utils.MD5Hash;

public class PasswordAction extends BaseAction {
	private static final Logger logger = Logger.getLogger(PasswordAction.class);

	@Override
	public String execute() throws Exception {
		return null;
	}
	
	
	public String change() throws Exception{
	    
		String pwdold = getRequest().getParameter("pwdold");
		String pwdnew = getRequest().getParameter("pwdnew");
		String pwdnew2 = getRequest().getParameter("pwdnew2");
		
		if(StringUtils.isEmpty(pwdold)){
			getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_ERROR,"密码不能为空！","password","","",""));
			return Constants.AJAX_RESULT;
		}
		
		if(StringUtils.isEmpty(pwdnew) || StringUtils.isEmpty(pwdnew2)){
			getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_ERROR,"新密码不能为空！","password","","",""));
			return Constants.AJAX_RESULT;
		}
		
		if(!pwdnew.equals(pwdnew2)){
			getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_ERROR,"两次输入密码不一致！","password","","",""));
			return Constants.AJAX_RESULT;
		}
		
		if(pwdnew.length()>32){
			getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_ERROR,"密码过长！","password","","",""));
			return Constants.AJAX_RESULT;
		}
		
		AdminManager adminManager = (AdminManager)getBean("adminManager");
		Admin a = (Admin)getRequest().getSession().getAttribute("admin");
		Admin admin = adminManager.getEntityById(a.getId());
		
		String pwdoldMD5 = MD5Hash.digest(pwdold.getBytes()).toString().toLowerCase();
		if(!admin.getPassword().toLowerCase().equals(pwdoldMD5)){
			getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_ERROR,"旧密码不正确！","password","","",""));
			return Constants.AJAX_RESULT;
		}
		
		
		String pwdnewMD5 = MD5Hash.digest(pwdnew.getBytes()).toString().toLowerCase();
		admin.setPassword(pwdnewMD5);
		int resultCount = adminManager.update(admin);
		
		if(resultCount==1){
			getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_DONE,"修改密码成功！","password","","",""));
		}else{
			getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_ERROR,"修改密码失败！","password","","",""));
		}
		return Constants.AJAX_RESULT;
	}

}
