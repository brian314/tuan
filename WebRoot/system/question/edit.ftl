
<div class="pageContent">
	<form method="post" action="/system/question!save.do" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<input name="question.id" value="${question.id}" type="hidden" />
		<input name="question.userId" value="${question.userId}" type="hidden" />
		<div class="pageFormContent" layoutH="56">
		    <dl class="nowrap">
				<dt>所属调查项目：</dt>
				<dd>
				    <select name="question.tid" class="required combox">
					     <#if topicList??>
						    <#list topicList as rs>
						        <option value="${rs.id}" <#if question.tid==rs.id>selected="selected"</#if>>${rs.title}</option>
						    </#list>
						 </#if>
				    </select>
				</dd>
			</dl>
			<dl class="nowrap">
				<dt>问题描述：</dt>
				<dd><input name="question.title" class="required" value="${question.title}" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>问题序号：</dt>
				<dd>
				   <select name="question.no" class="required combox" showvalue="${question.no}">
					  <#list 1..20 as idx>
                         <option value="${idx}" <#if question.no==idx>selected="selected"</#if>>${idx}</option>
                      </#list>
				   </select>
				</dd>
			</dl>
			<#if optionList??>
		       <#list optionList as rs>
					<dl class="nowrap">
						<dt>选项${rs.indexStr}：</dt>			
						<input name="optionTitle" class="required" type="text" value="${rs.title}" size="70"/>
						&nbsp;
						<select name="optionDetailType" class="required combox" onchange="javascript:showSecondOption(${rs.indexInt},this.value);">
						    <option value="0" <#if rs.optionDetailType==0>selected="selected"</#if>>无二级选项</option>
						    <option value="1" <#if rs.optionDetailType==1>selected="selected"</#if>>有下拉列表二级选项</option>
						    <option value="2" <#if rs.optionDetailType==2>selected="selected"</#if>>有填空类型二级选项</option>
						</select>
				    </dl>
				    <dl id="secondOption_${rs.indexInt}" <#if rs.optionDetailType!=1>style="display:none;"</#if>>
						<dt>二级选项：</dt>
						<dd>
						    <input name="optionDetail" type="text" value="${rs.optionDetail}" size="70"/>
						</dd>
				    </dl>
		       </#list>
			</#if>
			<dl class="nowrap">
				<dt>状态：</dt>
				<dd>
				  <select name="question.status" class="required combox" showvalue="1">
					  <option value="1" <#if question.status==1>selected="selected"</#if>>有效</option>
					  <option value="-1" <#if question.status==-1>selected="selected"</#if>>无效</option>
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
	
	<script language="javascript">
	     function showSecondOption(index,comboxValue){
	         if(comboxValue==1){
	             $("#secondOption_"+index).show();
	         }else{
	             $("#secondOption_"+index).hide();
	         }
	     }
	</script>

</div>
