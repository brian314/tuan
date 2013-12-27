<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>万人团管理平台</title>

<link href="<%=path%>/dwz/themes/default/style.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="<%=path%>/dwz/themes/css/core.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="<%=path%>/dwz/themes/css/print.css" rel="stylesheet" type="text/css" media="print"/>
<link href="<%=path%>/dwz/uploadify/css/uploadify.css" rel="stylesheet" type="text/css" media="screen"/>
<!--[if IE]>
<link href="themes/css/ieHack.css" rel="stylesheet" type="text/css" media="screen"/>
<![endif]-->

<script src="<%=path%>/dwz/js/speedup.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/jquery-1.7.1.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/jquery.cookie.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/jquery.validate.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/jquery.bgiframe.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/xheditor/xheditor-1.1.12-zh-cn.min.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/uploadify/scripts/swfobject.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/uploadify/scripts/jquery.uploadify.v2.1.0.js" type="text/javascript"></script>

<script src="<%=path%>/dwz/js/dwz.core.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.util.date.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.validate.method.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.regional.zh.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.barDrag.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.drag.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.tree.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.accordion.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.ui.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.theme.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.switchEnv.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.alertMsg.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.contextmenu.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.navTab.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.tab.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.resize.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.dialog.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.dialogDrag.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.sortDrag.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.cssTable.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.stable.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.taskBar.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.ajax.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.pagination.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.database.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.datepicker.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.effects.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.panel.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.checkbox.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.history.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.combox.js" type="text/javascript"></script>
<script src="<%=path%>/dwz/js/dwz.print.js" type="text/javascript"></script>
<!--
<script src="bin/dwz.min.js" type="text/javascript"></script>
-->
<script src="<%=path%>/dwz/js/dwz.regional.zh.js" type="text/javascript"></script>

<script type="text/javascript">
$(function(){
	DWZ.init("<%=path%>/dwz.frag.xml", {
		loginUrl:"/login_dialog.html", loginTitle:"登录",	// 弹出登录对话框
//		loginUrl:"login.html",	// 跳到登录页面
		statusCode:{ok:200, error:300, timeout:301}, //【可选】
		pageInfo:{pageNum:"pageNum", numPerPage:"numPerPage", orderField:"orderField", orderDirection:"orderDirection"}, //【可选】
		debug:false,	// 调试模式 【true|false】
		callback:function(){
			initEnv();
			$("#themeList").theme({themeBase:"<%=path%>/dwz/themes"}); // themeBase 相对于index页面的主题base路径
		}
	});
});
</script>
</head>

<body scroll="no">
	<div id="layout">
		<div id="header">
			<div class="headerNav">
				<a class="logo" href="http://j-ui.com">标志</a>
				<ul class="nav">
				    <li>
				         <a href='#'><s:property value="#session.admin.name"/>，欢迎回来</a>
                    </li> 
					<li><a href="<%=path%>/system/logout.do">退出</a></li>
				</ul>
				<ul class="themeList" id="themeList">
					
				</ul>
			</div>
		</div>

		<div id="leftside">
			<div id="sidebar_s">
				<div class="collapse">
					<div class="toggleCollapse"><div></div></div>
				</div>
			</div>
			<div id="sidebar">
				<div class="toggleCollapse"><h2>主菜单</h2><div>收缩</div></div>
				
				<div class="accordion" fillSpace="sidebar">
					<div class="accordionHeader">
						<h2><span>Folder</span>运营管理</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder">
							<li><a href="javascript:void(0);">商品管理</a>
								<ul>
									<li><a href="/system/product.do" target="navTab" rel="product">商品列表</a></li>
									<li><a href="/system/activity.do" target="navTab" rel="activity">活动商品列表</a></li>
									<li><a href="/system/productType.do" target="navTab" rel="productType">商品分类列表</a></li>
									<li><a href="/system/productBrand.do" target="navTab" rel="productBran">商品品牌列表</a></li>
								</ul>
							</li>
							<li><a href="javascript:void(0);">用户管理</a>
								<ul>
									<li><a href="/system/member.do" target="navTab" rel="member">用户列表</a></li>
								</ul>
							</li>
							<li><a href="javascript:void(0);">支付管理</a>
								<ul>
								    <li><a href="/system/trade.do" target="navTab" rel="trade">支付订单管理</a></li>
									<li><a href="/system/channelType.do" target="navTab" rel="channelType">支付渠道管理</a></li>
								</ul>
							</li>
							<li><a href="javascript:void(0);">修改登录密码</a>
								<ul>
								    <li><a href="password.jsp" target="navTab" rel="password">修改登录密码</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="accordionHeader">
						<h2><span>Folder</span>XXXX管理</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder">
							<!-- 
							<li><a href="javascript:void(0);">小说数据管理</a>
								<ul>
								    <li><a href="bookUrl.do" target="navTab" rel="bookUrl">小说与章节目录页绑定</a></li>
									<li><a href="chapter.do" target="navTab" rel="chapter">小说章节管理</a></li>
								</ul>
							</li>
							<li><a href="javascript:void(0);">小说爬虫管理</a>
								<ul>
									<li><a href="bookChannel.do" target="navTab" rel="bookChannel">资源来源管理</a></li>
								</ul>
							</li>
							 -->
						</ul>
					</div>
					
					<div class="accordionHeader">
						<h2><span>Folder</span>XXXX管理</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder">
							<!-- 
							<li><a href="javascript:void(0);">合作管理</a>
								<ul>
									<li><a href="cooperate.do" target="navTab" rel="cooperateChannel">合作管理</a></li>
								</ul>
								<ul>
									<li><a href="stat.do?vc_cid=chn_${admin.id}" target="navTab" rel="statChannel">统计查询</a></li>
								</ul>
							</li>
							 -->
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="container">
			<div id="navTab" class="tabsPage">
				<div class="tabsPageHeader">
					<div class="tabsPageHeaderContent"><!-- 显示左右控制时添加 class="tabsPageHeaderMargin" -->
						<ul class="navTab-tab">
							<li tabid="main" class="main"><a href="javascript:;"><span><span class="home_icon">我的主页</span></span></a></li>
						</ul>
					</div>
					<div class="tabsLeft">left</div><!-- 禁用只需要添加一个样式 class="tabsLeft tabsLeftDisabled" -->
					<div class="tabsRight">right</div><!-- 禁用只需要添加一个样式 class="tabsRight tabsRightDisabled" -->
					<div class="tabsMore">more</div>
				</div>
				<ul class="tabsMoreList">
					<li><a href="javascript:;">我的主页</a></li>
				</ul>
				<div class="navTab-panel tabsPageContent layoutBox">
					<div class="page unitBox">
						<div class="pageFormContent" layoutH="200" style="margin-right:230px">
						    欢迎回来！
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">Copyright &copy; 2013 www.maxonic.com.cn Inc. All Rights Reserved.</div>
</body>

</html>