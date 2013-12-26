<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="pageHeader">
     <form id="pagerForm" onsubmit="return navTabSearch(this);" class="pageForm required-validate" action="research.do" method="post">
         <input type="hidden" name="pageNum" value="${multiData.condition.pageNum}" />
	     <input type="hidden" name="numPerPage" value="${multiData.condition.numPerPage}" />
	      <div class="searchBar">
		    <table class="searchContent">
	           <tr>
					<td>
					   开始日期：
				       <input id="startDate" name="research.startDate" value="${multiData.condition.startDate}"  class="date textInput readonly" type="text" readOnly="true" format="yyyy-MM-dd"/>
					</td>
					<td>
					   结束日期：
				       <input id="endDate" name="research.endDate" value="${multiData.condition.endDate}" class="date textInput readonly" type="text" readOnly="true" format="yyyy-MM-dd"/>
					</td>
					<td>
					     <span style="float:left;line-height:21px;">所属项目：</span>
						 <select class="combox" name="research.tid" showvalue="${multiData.condition.tid}">
						          <option value="">全部</option>
						   <#if topicList??>
						      <#list topicList as rs>
						          <option value="${rs.id}" <#if multiData.condition.tid==rs.id>selected="selected"</#if>>${rs.title}</option>
						      </#list>
						   </#if>
						 </select>
			       </td>
				   <td>
					   <div class="buttonActive"><div class="buttonContent"><button type="submit">检索</button></div></div>
				   </td>
			   </tr>
			</table>
		  </div>
     </form>
</div>
<div class="pageContent">
<div class="panelBar">
		<ul class="toolBar">
			<li><a class="icon" href="#" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
		</ul>
</div>
	<table class="table" layoutH="114">
		<thead>
			<tr>
				<th style="text-align:center;">调查项目标题</th>
				<th style="text-align:center;">调查项目创建时间</th>
				<th style="text-align:center;">参与调查时间</th>
				<th style="text-align:center;">状态</th>
				<th style="text-align:center;">操作</th>
			</tr>
		</thead>
		<tbody>
		     <#if multiData.data??>
		       <#list multiData.data as rs>
					<tr target="sid" rel="${rs.id}">
						<td>${rs.title}</td>
						<td>${(rs.topicTime?string("yyyy-MM-dd HH:mm:ss"))!}</td>
					    <td>${(rs.researchTime?string("yyyy-MM-dd HH:mm:ss"))!}</td>
					    <td>
						     <#if rs.userId == admin.id>
							      <div style='color:green;'>已参与调查</div>
							 <#else>
							      <div style='color:red;'>未参与调查</div>
							 </#if>
					    </td>
					    <td>
					       <#if rs.userId != admin.id>
					          <a title="参与调查" target="navTab" href="/system/research!doResearch.do?id=${rs.tid}" class="btnEdit">参与调查</a>
					       </#if>
					    </td>
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