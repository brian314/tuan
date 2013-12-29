<?xml version="1.0" encoding="UTF-8"?>
<%@page import="org.springframework.cache.ehcache.EhCacheCacheManager"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="net.sf.ehcache.Cache"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>缓存管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style>
body {
	color:#272727;
	font-size: 18px;
	margin: 5;
	padding: 0;
	font-family: "微软雅黑",Helvetica;
	background:#B8D8B8;
}
</style>
<body>
<%
         //缓存管理首页，列出所有缓存项目
		 WebApplicationContext wac = (WebApplicationContext)config.getServletContext().getAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);
         EhCacheCacheManager cm = (EhCacheCacheManager) wac.getBean("cacheManager");
         for(String name : cm.getCacheNames()){
		     out.println("[<a href=\"cache.jsp?cache="+ name + "\">" + name + "</a>] ");
         }
		 out.print("<br/>");
		 
		 //列出某个缓存的详细缓存项目，并且显示Delete All按钮
		 if(request.getParameter("cache")!=null){
		    String cachename = request.getParameter("cache");
			org.springframework.cache.Cache c = cm.getCache(cachename);
			Cache cache = (Cache)c.getNativeCache();
			out.println("<br/>[" + cachename + "] size: " + cache.getSize() + "     <a href=\"cache.jsp?rmcache=" + cachename + "&cache="+cachename+"\">Delete All</a>]<br/>");
		    //删除所有
		    if(request.getParameter("rmcache")!=null){
		       cache.removeAll();
		       response.sendRedirect("cache.jsp?cache=" + cachename);
		    }
		    
		    //删除某个缓存项目
		    if (null != request.getParameter("key")) {
					cache.remove(request.getParameter("key"));
					response.sendRedirect("cache.jsp?cache="+ cachename);
			}
		    //显示所有项目
			for (int i = 0; i < cache.getKeys().size(); i++) {
			    out.print((i+1) + ":" + cache.getKeys().get(i).toString()
					+ "[<a href=\"cache.jsp?cache=" + cachename + "&key="
					+ cache.getKeys().get(i).toString() + "\">Delete</a>]<br/>");
			 }	
	     }	 
%>
</body>
</html>
