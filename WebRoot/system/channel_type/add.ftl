
<div class="pageContent">
	<form method="post" action="/system/topic!save.do" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
		    <dl class="nowrap">
				<dt>调查项目名称：</dt>
				<dd><input name="topic.title" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>状态：</dt>
				<dd>
				  <select name="topic.status" class="required combox" showvalue="1">
					  <option value="1">有效</option>
					  <option value="-1">无效</option>
				  </select>
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
