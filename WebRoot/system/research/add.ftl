
<div class="pageContent">
	<form method="post" action="/system/research!save.do" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<input name="tid" value="${tid}" type="hidden" />
		<div class="pageFormContent" layoutH="56">
			<strong style="color:red;font-size:16px;">以下题目为不定项选择题</strong><br/>
			<#if questionList??>
			    <#list questionList as question>
			        <dl class="nowrap">
						<input name="qids" value="${question.id}" type="hidden"/>
						<strong style="font-size:16px;">${question_index+1}.${question.title}</strong><br/><br/>
						<#if question.type==1>
							<#if question.optionList??>
				                <#list question.optionList as option>
				                     <#if option.title?? && option.title!="">
				                          <input type="checkbox" name="option_${question.id}" value="${option.id}" class="required" onclick="javascript:showSecOption(${option.id},${option.optionDetailType},'${option.optionDetail}',this.checked);"/>${option.indexStr}.${option.title}<span id="sec_opt_${option.id}" style="padding-left:30px;"></span><br/><br/>
				                     </#if>
				                </#list>
			                </#if>
		                <#elseif question.type==2>
		                    <input type="text" name="option_${question.id}" value="" class="required" size="100" maxlength="2000"/><br/><br/>
		                </#if>
			        </dl>
			    </#list>
		    </#if>
		</div>
		<div class="formBar">
			<ul style="float:left;">
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
				</li>
			</ul>
		</div>
	</form>
	
	<script language="javascript">
	     function showSecOption(oid,optionDetailType,optionDetail,checked){
	         if(!checked){
	            $("#sec_opt_"+oid).html("");
	            return;
	         }
	         if(optionDetailType==1){
	             createSelect(oid,optionDetail);
	         }else if(optionDetailType==2){
	             createText(oid);
	         }else if(optionDetailType==3){
	             
	         }
	     }
	     
	     function createSelect(oid,detail){
	         var arrs = detail.split("|");
	         var selectHTML='<select name="sec_opt_'+oid+'" style="float:none;">';
	         for(var i=0;i<arrs.length;i++){ 
                selectHTML=selectHTML + '<option value="'+arrs[i]+'">'+arrs[i]+'</option>';
             } 
	         selectHTML=selectHTML + "</select>";
             $("#sec_opt_"+oid).append(selectHTML);  
         }
         
         function createText(oid){  
             var input1 = '详细：<input name="sec_opt_'+oid+'" type="text" size="50" maxlength="512"/>';
             $("#sec_opt_"+oid).append(input1);  
         }
	     
	     
	</script>
	
</div>
