<div class="pageContent">
	<form method="post" action="/system/site!saveOrUpdate.do" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<input name="site.id" value="${site.id}" type="hidden" />
		<div class="pageFormContent" layoutH="56">
			<dl>
				<dt>网站名称：</dt>
				<dd><input name="site.siteName" value="${site.siteName}" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>网站域名：</dt>
				<dd><input name="site.siteDomain" value="${site.siteDomain}" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>网站BlockKey：</dt>
				<dd><input name="site.blockKey" value="${site.blockKey}" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>网站入口：</dt>
				<dd><input name="site.siteEntry" value="${site.siteEntry}" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>频道提取表达式：</dt>
				<dd><input name="site.channelUrlReg" value="${site.channelUrlReg}" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>槽位：</dt>
				<dd><input name="site.slots" value="${site.slots}" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>USER-AGENT：</dt>
				<dd><input name="site.ua" value="${site.ua}" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>listDocidReg：</dt>
				<dd><input name="site.listDocidReg" value="${site.listDocidReg}" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>detailDocidReg：</dt>
				<dd><input name="site.detailDocidReg" value="${site.detailDocidReg}" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>listFirstIndex：</dt>
				<dd><input name="site.listFirstIndex" value="${site.listFirstIndex}" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>detailFirstIndex：</dt>
				<dd><input name="site.detailFirstIndex" value="${site.detailFirstIndex}" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>启用/禁用：</dt>
				<dd>
				  <select name="site.status" class="required combox" showvalue="${site.status}">
					<option value="">请选择</option>
					<option value="1">启用</option>
					<option value="0">禁用</option>
				  </select>
				</dd>
			</dl>
			<dl class="nowrap">
				<dt>字符集：</dt>
				<dd>
				  <select name="site.charset" class="required combox" showvalue="${site.charset}">
					<option value="">请选择</option>
					<option value="UTF-8">UTF-8</option>
					<option value="GBK">GBK</option>
					<option value="GB2312">GB2312</option>
					<option value="BIG5">BIG5</option>
				  </select>
				</dd>
			</dl>
			
			<dl class="nowrap">
				<dt>休眠时间：</dt>
				<dd>
				  <select name="site.intervalPerUrl" class="required combox" showvalue="${site.intervalPerUrl}">
					<option value="">请选择</option>
					<option value="1">1秒</option>
					<option value="2">2秒</option>
					<option value="5">5秒</option>
					<option value="10">10秒</option>
					<option value="15">15秒</option>
					<option value="20">20秒</option>
					<option value="50">50秒</option>
					<option value="120">120秒</option>
				  </select>
				</dd>
			</dl>
			
			<dl class="nowrap">
				<dt>template：</dt>
				<dd>
				  <textarea name="site.template" rows="8" cols="100" class="textInput">${site.template}</textarea>
				</dd>
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
