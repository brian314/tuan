
<div class="pageContent">
	<form method="post" action="/system/productType!save.do" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
		    <dl class="nowrap">
				<dt>父类：</dt>
				<dd>
				    <select name="productType.fatherId" class="required combox">
					     <#if productTypeList??>
						    <#list productTypeList as rs>
						        <option value="${rs.id}">${rs.name}</option>
						    </#list>
						 </#if>
				    </select>
				</dd>
			</dl>
			<dl class="nowrap">
				<dt>分类名称：</dt>
				<dd><input name="productType.name" class="required" type="text" size="50"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>排序索引：</dt>
				<dd><input name="productType.sort" class="required" type="text" size="50" max="99" min="0"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>状态：</dt>
				<dd>
				  <select name="productType.status" class="required combox" showvalue="1">
					  <option value="1">有效</option>
					  <option value="0">无效</option>
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
