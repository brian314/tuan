package com.tuan.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.log4j.Logger;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.tuan.utils.Constants;

public class InitServlet extends HttpServlet{
	private static final long serialVersionUID = -8615238153261272900L;
	private static Logger logger = Logger.getLogger(InitServlet.class);

	public void init() throws ServletException {
		//获取spring的context
		Constants.CTX=WebApplicationContextUtils.getWebApplicationContext(getServletContext());
	}

}
