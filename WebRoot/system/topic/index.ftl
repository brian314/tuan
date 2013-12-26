<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="pageHeader">
     <form id="pagerForm" onsubmit="return navTabSearch(this);" class="pageForm required-validate" action="topic.do" method="post">
         <input type="hidden" name="pageNum" value="${multiData.condition.pageNum}" />
	     <input type="hidden" name="numPerPage" value="${multiData.condition.numPerPage}" />
	      <div class="searchBar">
		    <table class="searchContent">
	           <tr>
					<td>
					   开始日期：
				       <input id="startDate" name="topic.startDate" value="${multiData.condition.startDate}"  class="date textInput readonly" type="text" readOnly="true" format="yyyy-MM-dd"/>
					</td>
					<td>
					   结束日期：
				       <input id="endDate" name="topic.endDate" value="${multiData.condition.endDate}" class="date textInput readonly" type="text" readOnly="true" format="yyyy-MM-dd"/>
					</td>
					<td>
			           <span style="float:left;line-height:21px;">项目名：</span>
			           <input id="topicName" name="topic.title" value="${multiData.condition.title}" class="textInput" type="text" maxlength="20"/>
			        </td>
					<td>
					     <span style="float:left;line-height:21px;">状态：</span>
						 <select class="combox" name="topic.status" showvalue="${multiData.condition.status}">
						   <option value="">全部</option>
						   <option value="1">有效</option>
						   <option value="-1">无效</option>
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
			<li><a class="add" href="/system/topic!add.do" target="navTab"><span>添加调查项目</span></a></li>
			<li><a class="delete" href="/system/topic!delete.do?ids={sid}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
			<li><a class="delete" href="/system/topic!delete.do" rel="ids" target="selectedTodo" title="确实要删除这些记录吗?"><span>批量删除</span></a></li>
			<li><a class="edit" href="/system/topic!edit.do?id={sid}" target="navTab"><span>编辑调查项目</span></a></li>
			<li class="line">line</li>
			<li><a class="icon" href="#" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
		</ul>
</div>
	<table class="table" layoutH="114">
		<thead>
			<tr>
			    <th><input type="checkbox" class="checkboxCtrl" group="ids"/></th>
				<th style="text-align:center;">调查项目标题</th>
				<th style="text-align:center;">创建者</th>
				<th style="text-align:center;">创建时间</th>
				<th style="text-align:center;">更新者</th>
				<th style="text-align:center;">更新时间</th>
				<th style="text-align:center;">状态</th>
				<th style="text-align:center;">操作</th>
			</tr>
		</thead>
		<tbody>
		     <#if multiData.data??>
		       <#list multiData.data as rs>
					<tr target="sid" rel="${rs.id}">
					    <td><input type="checkbox" name="ids" value="${rs.id}"/></td>
						<td>${rs.title}</td>
						<td>${rs.userName}</td>
					    <td>${(rs.createDatetime?string("yyyy-MM-dd HH:mm:ss"))!}</td>
					    <td>${rs.updaterName}</td>
					    <td>${(rs.updateDatetime?string("yyyy-MM-dd HH:mm:ss"))!}</td>
					    <td>
						     <#if rs.status == 1>
							      <div style='color:green;'>有效</div>
							 <#elseif rs.status == -1>
							      <div style='color:red;'>无效</div>
							 </#if>
					    </td>
					    <td>
					       <a title="编辑" target="navTab" href="/system/topic!edit.do?id=${rs.id}" class="btnEdit">编辑</a>
					       <a title="确认删除此记录？" target="ajaxTodo" href="/system/topic!delete.do?ids=${rs.id}" class="btnDel">删除</a>
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