<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="pageContent">
	<div class="pageFormContent nowrap" layoutH="97">
	<form class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);" action="password!change.do" method="post" novalidate="novalidate">
	<dl>
		<dt>原密码：</dt><dd><input class="required alphanumeric" name="pwdold" type="password"/></dd>
	</dl>
	<dl>
		<dt>新密码：</dt><dd><input class="required alphanumeric" id="pwdnew" name="pwdnew" type="password"/></dd>
	</dl>
	<dl>
		<dt>再次确认：</dt><dd><input class="required alphanumeric" name="pwdnew2" type="password" equalto="#pwdnew"/></dd>
	</dl>
			<dl>
				<dt>&nbsp;</dt>
				<dd>
					<div class="buttonActive"><div class="buttonContent"><button type="submit">确定</button></div></div>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
					<div>${msg}</div>
				</dd>
			</dl>
		</div>
	</div>