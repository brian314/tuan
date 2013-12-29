package com.tuan.filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.MessageFormat;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.tuan.entity.Admin;
import com.tuan.utils.Constants;

public class SessionFilter extends HttpServlet implements Filter {
	private static final long serialVersionUID = -9085992742706078625L;
	private static final Logger logger = Logger.getLogger(SessionFilter.class);


	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

	public void doFilter(ServletRequest servletRequest,ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest httpRequest = (HttpServletRequest)servletRequest;
		HttpServletResponse httpResponse = (HttpServletResponse)servletResponse;
		//String url = httpRequest.getServletPath();
		//System.out.println(url);
		Admin admin = (Admin)httpRequest.getSession().getAttribute("admin");
		if(admin!=null){
			chain.doFilter(servletRequest, servletResponse);
		}else{
			if(httpRequest.getHeader("X-Requested-With")!=null || httpRequest.getParameter("_")!=null){
				//httpResponse.setContentType("text/html; charset=utf-8");
				httpResponse.setContentType("application/json; charset=utf-8");
				PrintWriter out = httpResponse.getWriter();
		        out.print(MessageFormat.format(Constants.AJAX_TIMEOUT,"登录超时，请重新登录！","main",""));
			    out.flush();
			}else{
				httpResponse.sendRedirect("/index.jsp");
				//httpRequest.getRequestDispatcher("/index.jsp").forward(servletRequest, servletResponse);
				//PrintWriter out = httpResponse.getWriter();
				//out.print("<script>window.top.location='/index.jsp';</script>");//防止在子框架显示login.jsp
			}
		}
		
	}

}
