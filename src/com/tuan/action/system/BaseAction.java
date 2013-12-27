package com.tuan.action.system;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.tuan.entity.MultiData;
import com.tuan.utils.StringTool;

public class BaseAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public MultiData multiData = new MultiData();
	public int numPerPage = 50;
	public int pageNum = 1;
	
	
	public String now = "";// 当前时间
	
	public String getYesterday(){
		 Calendar calendar = Calendar.getInstance();
		 calendar.add(Calendar.DATE,-1);
		 return StringTool.getDayFormat().format(calendar.getTime());
	   
	}
	
	
	@Override
	public String execute() throws Exception {
		return super.execute();
	}
	
	public HttpServletRequest getRequest(){
		return ServletActionContext.getRequest();
	}
	
	public HttpServletResponse getResponse(){
		return ServletActionContext.getResponse();
	}
	
	public Object getBean(String beanName){
		return WebApplicationContextUtils.getRequiredWebApplicationContext(ServletActionContext.getServletContext()).getBean(beanName);
	}

	public MultiData getMultiData() {
		return multiData;
	}

	public void setMultiData(MultiData multiData) {
		this.multiData = multiData;
	}


	public int getNumPerPage() {
		return numPerPage;
	}


	public void setNumPerPage(int numPerPage) {
		this.numPerPage = numPerPage;
	}


	public int getPageNum() {
		return pageNum;
	}


	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}


	public String getNow() {
		SimpleDateFormat sm = new SimpleDateFormat("HH:mm MM-dd");
		now = sm.format(new Date());
		return now;
	}


	public void setNow(String now) {
		this.now = now;
	}

}
