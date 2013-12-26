
<div class="pageContent">
	<form method="post" action="/system/channel!saveOrUpdate.do" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<input name="channel.id" value="${channel.id}" type="hidden" />
		<div class="pageFormContent" layoutH="56">
		    <dl class="nowrap">
				<dt>所属网站：</dt>
				<dd>
				  <select name="channel.siteId" class="required combox" showvalue="${channel.siteId}">
					<option value="">所有网站</option>
					<option value="1">21IC-论坛</option>
					<option value="2">21IC-博客</option>
					<option value="3">58同城-拼车</option>
					<option value="4">赶集网-拼车</option>
					<option value="5">百姓网-拼车</option>
				  </select>
				</dd>
			</dl>
			<dl class="nowrap">
				<dt>启用/禁用：</dt>
				<dd>
				  <select name="channel.status" class="required combox" showvalue="${channel.status}">
					<option value="">请选择</option>
					<option value="1">启用</option>
					<option value="0">禁用</option>
				  </select>
				</dd>
			</dl>
			
			<dl class="nowrap">
				<dt>更新间隔：</dt>
				<dd>
				  <select name="channel.intervalForUpdate" class="required combox" showvalue="${channel.intervalForUpdate}">
					<option value="">请选择</option>
					<option value="3600">1小时</option>
					<option value="7200">2小时</option>
					<option value="14400">4小时</option>
					<option value="21600">6小时</option>
					<option value="43200">12小时</option>
					<option value="86400">24小时</option>
					<option value="172800">48小时</option>
					<option value="259200">72小时</option>
				  </select>
				</dd>
			</dl>
			
			<dl class="nowrap">
				<dt>更新/全新：</dt>
				<dd>
				  <select name="channel.forUpdate" class="required combox" showvalue="${channel.forUpdate?string("true","false")}">
					<option value="">请选择</option>
					<option value="false">全新</option>
					<option value="true">更新</option>
				  </select>
				</dd>
			</dl>
		    
		    <dl class="nowrap">
				<dt>频道名称：</dt>
				<dd><input name="channel.channelName" value="${channel.channelName}" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>频道Url：</dt>
				<dd><input name="channel.channelUrl" value="${channel.channelUrl}" class="required" type="text" size="100"/></dd>
			</dl>
			
			<dl class="nowrap">
				<dt>listUrlReg：</dt>
				<dd><input name="channel.listUrlReg" value="${channel.listUrlReg}" type="text" size="100" /></dd>
			</dl>
			
			<dl class="nowrap">
				<dt>detailUrlReg：</dt>
				<dd><input name="channel.detailUrlReg" value="${channel.detailUrlReg}" type="text" size="100" /></dd>
			</dl>
			
            <dl class="nowrap">
				<dt>listPageSpecStart：</dt>
				<dd><input name="channel.listPageSpecStart" value="${channel.listPageSpecStart?replace('"','&quot;')}" type="text" size="100" /></dd>
			</dl>

			<dl class="nowrap">
				<dt>listPageSpecEnd：</dt>
				<dd><input name="channel.listPageSpecEnd" value="${channel.listPageSpecEnd?replace('"','&quot;')}" type="text" size="100" /></dd>
			</dl>
			
			<dl class="nowrap">
				<dt>detailsSpecStart：</dt>
				<dd><input name="channel.detailsSpecStart" value="${channel.detailsSpecStart?replace('"','&quot;')}" type="text" size="100" /></dd>
			</dl>
			
			<dl class="nowrap">
				<dt>detailsSpecEnd：</dt>
				<dd><input name="channel.detailsSpecEnd" value="${channel.detailsSpecEnd?replace('"','&quot;')}" type="text" size="100" /></dd>
			</dl>
			<dl class="nowrap">
				<dt>detailPageSpecStart：</dt>
				<dd><input name="channel.detailPageSpecStart" value="${channel.detailPageSpecStart?replace('"','&quot;')}" type="text" size="100" /></dd>
			</dl>
			<dl class="nowrap">
				<dt>detailPageSpecEnd：</dt>
				<dd><input name="channel.detailPageSpecEnd" value="${channel.detailPageSpecEnd?replace('"','&quot;')}" type="text" size="100" /></dd>
			</dl>
			
			<dl class="nowrap">
				<dt>更新列表正则：</dt>
				<dd><input name="channel.updateListUrlReg" value="${channel.updateListUrlReg}" type="text" size="100" /></dd>
			</dl>
			
			<dl class="nowrap">
				<dt>pageSize：</dt>
				<dd><input name="channel.pageSize" value="${channel.pageSize}" type="text" size="100" /></dd>
			</dl>
			
			

		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
