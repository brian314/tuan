<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="pageHeader">
     <form id="pagerForm" onsubmit="return navTabSearch(this);" class="pageForm required-validate" action="answer!stat.do" method="post">
         <input type="hidden" name="pageNum" value="${multiData.condition.pageNum}" />
	     <input type="hidden" name="numPerPage" value="${multiData.condition.numPerPage}" />
	      <div class="searchBar">
		    <table class="searchContent">
	           <tr>
					<td>
			           <span style="float:left;line-height:21px;">项目名：</span>
			           <select name="answer.tid" class="required combox" onchange="javascript:showQuestion(this.value,undefined);">
			             <option value="">全部</option>
					     <#if topicList??>
						    <#list topicList as rs>
						        <option value="${rs.id}" <#if answer.tid==rs.id>selected="selected"</#if>>${rs.title}</option>
						    </#list>
						 </#if>
				       </select>
			        </td>
			        <td colspan="2">
			           <span style="float:left;line-height:21px;">题目：</span>
			           <select id="qid_stat" name="answer.qid">
			               <option value="">全部</option>
			               <#if questionList??>
						    <#list questionList as rs>
						        <option value="${rs.id}" <#if answer.qid==rs.id>selected="selected"</#if>>${rs.title}</option>
						    </#list>
						   </#if>
			           </select>
			        </td>
			        	
			   </tr>
			   <tr>
			      <td>
			           <span style="float:left;line-height:21px;">部门：</span>
			           <select name="answer.deptNo">
			               <option value="">全部</option>
					       <#if deptList??>
						     <#list deptList as rs>
						         <option value="${rs.id}" <#if answer.deptNo==rs.id>selected="selected"</#if>>${rs.name}</option>
						     </#list>
						   </#if>
			           </select>
			      </td>
			      <td>
					   姓名：
				       <input name="answer.userName" value="${multiData.condition.userName}" type="text"/>
			      </td>	
			      <td>
					   <div class="buttonActive"><div class="buttonContent"><button type="submit">检索</button></div></div>
				  </td>
			   </tr>
			</table>
		  </div>
     </form>
     
     <script language="javascript">

	     function showQuestion(tid){
	         $("#qid_stat option").remove();
	         $("#qid_stat").append("<option value=''>全部</option>");
	         if(!tid) return;

	         $.getJSON("answer!getQuestion.do?tid="+tid,function(data) {
			     $.each(data.questionList,function(i,item){
			         $("#qid_stat").append("<option value='"+item.id+"'>"+item.title+"</option>");
                 });      
			 });
	     }
	</script>
     
     
</div>
<div class="pageContent">
<div class="panelBar">
		<ul class="toolBar">
			<li><a class="icon" href="#" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
		</ul>
</div>
	<table class="table" layoutH="140">
		<thead>
			<tr>
				<th style="text-align:center;">调查答案</th>
				<th style="text-align:center;">统计数量</th>
			</tr>
		</thead>
		<tbody>
		     <#if multiData.data??>
		       <#list multiData.data as rs>
					<tr target="sid" rel="${rs.id}">
						<td>${rs.answer}</td>
					    <td>${rs.cnt}</td>
					</tr>
				</#list>
			  </#if>
		</tbody>
	</table>

    <div class="panelBar">
		<div class="pages">
			<span>显示</span>
			<select class="combox" name="numPerPage" onchange="navTabPageBreak({numPerPage:this.value})" showvalue="${numPerPage}" def="50">
				<option value="10">10</option>
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
			</select>
			<span>条，共${multiData.total}条</span>
		</div>
		<div class="pagination" targetType="navTab" totalCount="${multiData.total}" numPerPage="${numPerPage}" pageNumShown="10" currentPage="${pageNum}"></div>
	</div>
</div>