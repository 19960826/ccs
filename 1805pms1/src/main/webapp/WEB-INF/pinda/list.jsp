

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="res/lecheng/css/admin.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/theme.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.validate.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.treeview.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.ui.css" rel="stylesheet" type="text/css"/>
<!-- <script src="/thirdparty/ckeditor/ckeditor.js" type="text/javascript"></script> -->
<!-- <script src="/thirdparty/My97DatePicker/WdatePicker.js" type="text/javascript"></script> -->
<script type="text/javascript" src="../res/fckeditor/fckeditor.js"></script>
<script src="res/common/js/jquery.js" type="text/javascript"></script>
<script src="res/common/js/jquery.ext.js" type="text/javascript"></script>
<script src="res/common/js/jquery.form.js" type="text/javascript"></script>
<script src="res/common/js/lecheng.js" type="text/javascript"></script>
<script src="res/lecheng/js/admin.js" type="text/javascript"></script>
<link rel="stylesheet" href="../res/css/style.css" />
<!-- 引入标签库 -->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Pinda-list</title>
<script type="text/javascript">
function update(){
	var con=confirm("您确定要修改吗？");
	if(con){
		return true;
	}else{
		return false;
	}
}
function del(){
	var con=confirm("您确定要删除吗？");
	if(con){
		return true;
	}else{
		return false;
	}
}
</script>
</head>
<body>
<div class="box-positon">
	<div class="rpos">当前位置: 频道管理 - 列表</div>
	<form class="ropt">
		<input class="add" type="button" value="添加" onclick="javascript:window.location.href='queryCname.do'"/>
	</form>
	<div class="clear"></div>
</div>
<div class="body-box">
<input type="hidden" name="pageNo" value=""/>
<form method="post" id="tableForm">
<input type="hidden" value="" name="pageNo"/>
<input type="hidden" value="" name="queryName"/>
<table cellspacing="1" cellpadding="0" border="0" width="100%" class="pn-ltable">
	<thead class="pn-lthead">
		<tr>
			<th width="10"><input type="checkbox" onclick="Pn.checkbox('ids',this.checked)"/></th>
			<th>频道id</th>
			<th>频道名字</th>
			<th>上级栏目</th>
			<th>级别</th>
			<th>是否叶子</th>
			<th>顺序</th>
			<th>操作选项</th>
		</tr>
	</thead>
	<tbody class="pn-ltbody">
		<c:forEach items="${list}" var="pindas">
		<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
			<td><input type="checkbox" name="ids" value="73"/></td>
			<td align="center">${pindas.id }</td>
			<td align="center">${pindas.cname }</td>
			<td align="center">${pindas.ppname }</td>
			<td align="center">${pindas.pname }</td>
			<td align="center">${pindas.isleaftxt}</td>
		    <td align="center">${pindas.sort }</td>
			<td align="center">
			<a href="queryybyid.do?id=${pindas.id }" class="pn-opt"   onclick="return update()">修改</a>
			<a href="deletepind.do?id=${pindas.id }" class="pn-opt"  onclick="return del()">删除</a>
			</td>
		</tr>
		</c:forEach>
	</tbody>
	</table>
	<div class="page pb15"   style="float:right">
	<span class="r inb_a page_b">
	      <!-- 当前页/总页 -->
			<font size=2>[当前第 ${requestScope.currentPage}页/共${requestScope.pageCount}页 ]</font>
			<font size=2><a href="querypind.do?currentPage=1">首页</a></font>
			<c:if  test="${requestScope.currentPage-1>0}">	
					<font size=2><a href="querypind.do?currentPage=${requestScope.currentPage-1}">上一页</a></font>
		    </c:if>
		     <c:if test="${requestScope.currentPage+1<=requestScope.pageCount }">
		           <font size=2><a href="querypind.do?currentPage=${requestScope.currentPage+1}">下一页</a></font>
		     </c:if>
		  到第<input type='text' id='PAGENO'  size='3' />页 <input type='button' id='skip' class='hand btn60x20' value='确定' onclick="javascript:window.location.href = 'querypind.do?&currentPage=' + $('#PAGENO').val() +'&mohuname=${mohuname }&mohuenabled=${mohuenabled }'"/>
		          <font size=2><a href="querypind.do?currentPage=${requestScope.pageCount}">尾页</a></font>

	</span>
</div>
<div style="margin-top:15px;">
