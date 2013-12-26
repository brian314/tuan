
<div class="pageContent">
	<form method="post" action="/system/topic!save.do" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<input name="topic.id" value="${topic.id}" type="hidden" />
		<input name="topic.userId" value="${topic.userId}" type="hidden" />
		<div class="pageFormContent" layoutH="56">
		    <dl class="nowrap">
				<dt>调查项目名称：</dt>
				<dd><input name="topic.title" value="${topic.title}" class="required" type="text" size="100"/></dd>
			</dl>
			
			<dl class="nowrap">
				<dt>状态：</dt>
				<dd>
				  <select name="topic.status" class="required combox" showvalue="${topic.status}">
					  <option value="1" <#if topic.status==1>selected="selected"</#if>>有效</option>
					  <option value="-1" <#if topic.status==-1>selected="selected"</#if>>无效</option>
				  </select>
				</dd>
			</dl>
			<dl class="nowrap">
				<dt>创建者：</dt>
				<dd><input name="topic.userName" value="${topic.userName}" class="required textInput readonly" type="text" readOnly="true"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>创建时间：</dt>
				<dd><input id="createDatetime" name="topic.createDatetime" value="${topic.createDatetime?datetime}"  class="required textInput readonly" type="text" readOnly="true"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>更新时间：</dt>
				<dd><input id="updateDatetime" name="topic.updateDatetime" value="${topic.updateDatetime?datetime}"  class="required textInput readonly" type="text" readOnly="true"/></dd>
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
