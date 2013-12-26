package com.tuan.listener;

import java.util.Date;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.log4j.Logger;

public class SessionListener implements HttpSessionListener {
	private static final Logger logger = Logger.getLogger(SessionListener.class);
	
	
	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		logger.info("created:"+new Date()+ "---"+arg0.getSession().getId());	
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		HttpSession session = arg0.getSession();
		logger.info("destroyed:"+new Date()+ "---"+arg0.getSession().getId());
		arg0.getSession().invalidate();
	}

}
