
<div class="pageContent">
	<form method="post" action="/system/question!save.do" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
		    <strong style="color:red;">PS:选择项内容不能含有英文的单引号和双引号。</strong>
		    <dl class="nowrap">
				<dt>所属调查项目：</dt>
				<dd>
				    <select name="question.tid" class="required combox">
					     <#if topicList??>
						    <#list topicList as rs>
						        <option value="${rs.id}">${rs.title}</option>
						    </#list>
						 </#if>
				    </select>
				</dd>
			</dl>
			<dl class="nowrap">
				<dt>问题描述：</dt>
				<dd><input name="question.title" class="required" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>问题序号：</dt>
				<dd>
				   <select name="question.no" class="required combox" showvalue="1">
					  <#list 1..20 as idx>
                         <option value="${idx}">${idx}</option>
                      </#list>
				   </select>
				</dd>
			</dl>
			<dl class="nowrap">
				<dt>选项A：</dt>			
				<input name="optionTitle" class="required" type="text" size="70"/>
				&nbsp;
				<select name="optionDetailType" class="required combox" onchange="javascript:showSecondOption(1,this.value);">
				    <option value="0">无二级选项</option>
				    <option value="1">有下拉列表二级选项</option>
				    <option value="2">有填空类型二级选项</option>
				</select>
		    </dl>
		    <dl id="secondOption_1" style="display:none;">
				<dt>二级选项：</dt>
				<dd>
				    <input name="optionDetail" type="text" size="70"/>
				</dd>
		    </dl>
		    <dl class="nowrap">
				<dt>选项B：</dt>			
				<input name="optionTitle" class="required" type="text" size="70"/>
				&nbsp;
				<select name="optionDetailType" class="required combox" onchange="javascript:showSecondOption(2,this.value);">
				    <option value="0">无二级选项</option>
				    <option value="1">有下拉列表二级选项</option>
				    <option value="2">有填空类型二级选项</option>
				</select>
		    </dl>
		    <dl id="secondOption_2" style="display:none;">
				<dt>二级选项：</dt>
				<dd>
				    <input name="optionDetail" type="text" size="70"/>
				</dd>
		    </dl>
		    <dl class="nowrap">
				<dt>选项C：</dt>			
				<input name="optionTitle" class="required" type="text" size="70"/>
				&nbsp;
				<select name="optionDetailType" class="required combox" onchange="javascript:showSecondOption(3,this.value);">
				    <option value="0">无二级选项</option>
				    <option value="1">有下拉列表二级选项</option>
				    <option value="2">有填空类型二级选项</option>
				</select>
		    </dl>
		    <dl  id="secondOption_3" style="display:none;">
				<dt>二级选项：</dt>
				<dd>
				    <input name="optionDetail" type="text" size="70"/>
				</dd>
		    </dl>
		    <dl class="nowrap">
				<dt>选项D：</dt>			
				<input name="optionTitle" class="required" type="text" size="70"/>
				&nbsp;
				<select name="optionDetailType" class="required combox" onchange="javascript:showSecondOption(4,this.value);">
				    <option value="0">无二级选项</option>
				    <option value="1">有下拉列表二级选项</option>
				    <option value="2">有填空类型二级选项</option>
				</select>
		    </dl>
		    <dl  id="secondOption_4" style="display:none;">
				<dt>二级选项：</dt>
				<dd>
				    <input name="optionDetail" type="text" size="70"/>
				</dd>
		    </dl>
		    <dl class="nowrap">
				<dt>选项E：</dt>			
				<input name="optionTitle" class="required" type="text" size="70"/>
				&nbsp;
				<select name="optionDetailType" class="required combox" onchange="javascript:showSecondOption(5,this.value);">
				    <option value="0">无二级选项</option>
				    <option value="1">有下拉列表二级选项</option>
				    <option value="2">有填空类型二级选项</option>
				</select>
		    </dl>
		    <dl  id="secondOption_5" style="display:none;">
				<dt>二级选项：</dt>
				<dd>
				    <input name="optionDetail" type="text" size="70"/>
				</dd>
		    </dl>
		    <dl class="nowrap">
				<dt>选项F：</dt>			
				<input name="optionTitle" class="required" type="text" size="70"/>
				&nbsp;
				<select name="optionDetailType" class="required combox" onchange="javascript:showSecondOption(6,this.value);">
				    <option value="0">无二级选项</option>
				    <option value="1">有下拉列表二级选项</option>
				    <option value="2">有填空类型二级选项</option>
				</select>
		    </dl>
		    <dl id="secondOption_6" style="display:none;">
				<dt>二级选项：</dt>
				<dd>
				    <input name="optionDetail" type="text" size="70"/>
				</dd>
		    </dl>
		    <dl class="nowrap">
				<dt>选项G：</dt>			
				<input name="optionTitle" class="required" type="text" size="70"/>
				&nbsp;
				<select name="optionDetailType" class="required combox" onchange="javascript:showSecondOption(7,this.value);">
				    <option value="0">无二级选项</option>
				    <option value="1">有下拉列表二级选项</option>
				    <option value="2">有填空类型二级选项</option>
				</select>
		    </dl>
		    <dl id="secondOption_7" style="display:none;">
				<dt>二级选项：</dt>
				<dd>
				    <input name="optionDetail" type="text" size="70"/>
				</dd>
		    </dl>
		    <dl class="nowrap">
				<dt>选项H：</dt>			
				<input name="optionTitle" class="required" type="text" size="70"/>
				&nbsp;
				<select name="optionDetailType" class="required combox" onchange="javascript:showSecondOption(8,this.value);">
				    <option value="0">无二级选项</option>
				    <option value="1">有下拉列表二级选项</option>
				    <option value="2">有填空类型二级选项</option>
				</select>
		    </dl>
		    <dl id="secondOption_8" style="display:none;">
				<dt>二级选项：</dt>
				<dd>
				    <input name="optionDetail" type="text" size="70"/>
				</dd>
		    </dl>
			
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
