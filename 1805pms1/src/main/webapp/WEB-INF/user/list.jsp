
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<link href="../res/lecheng/css/admin.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/theme.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/jquery.validate.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/jquery.treeview.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/jquery.ui.css" rel="stylesheet" type="text/css"/>

<!-- <script src="/thirdparty/ckeditor/ckeditor.js" type="text/javascript"></script> -->
<!-- <script src="/thirdparty/My97DatePicker/WdatePicker.js" type="text/javascript"></script> -->
<script type="text/javascript" src="res/fckeditor/fckeditor.js"></script>
<script src="../res/common/js/jquery.js" type="text/javascript"></script>
<script src="../res/common/js/jquery.ext.js" type="text/javascript"></script>
<script src="../res/common/js/jquery.form.js" type="text/javascript"></script>
<script src="../res/common/js/lecheng.js" type="text/javascript"></script>
<script src="../res/lecheng/js/admin.js" type="text/javascript"></script>

<link rel="stylesheet" href="../res/css/style.css" />

<!-- 引用标签库 -->
<%@taglib uri="http://java.sun.com/jstl/core_rt"   prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>user-list</title>
<script  type="text/javascript">

    function   update(){
    	var con=confirm("您确定要修改吗？");
    	  if(con){
    		   return true;
    		   }else{
    			   return false;
    		   }
    }
  function del(){
   var con=confirm("您真的确定要删除吗?");
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
	<div class="rpos">当前位置: 用户-列表</div>
		<form class="ropt">
		<input type="submit" onclick="this.form.action='toadd.do';" value="添加" class="return-button"/>
	</form>
	<div class="clear"></div>
</div>
<form method="post" id="tableForm" action="list.do">
<input type="hidden" name="pageNo"/>
<input type="hidden" name="queryName"/>
登录名：<input type="text" name="loginname" value="${QUERY.loginname}" />
<select name="isenabled">
<c:if test="${QUERY.isenabled==0}">
<option value="0" selected="selected">请选择</option>
<option value="1">有效</option>
<option value="-1">无效</option>
</c:if>
<c:if test="${QUERY.isenabled==1}">
<option value="0" >请选择</option>
<option value="1" selected="selected">有效</option>
<option value="-1">无效</option>
</c:if>
<c:if test="${QUERY.isenabled==-1}">
<option value="0" >请选择</option>
<option value="1">有效</option>
<option value="-1"selected="selected">无效</option>
</c:if>
<select>
<input type="submit" class="query" value="查询"/>
</form>
<div class="body-box">
<input type="hidden" name="pageNo" />
<form action="deletes.do" method="post">
<table cellspacing="1" cellpadding="0" border="0" width="100%" class="pn-ltable">
	<thead class="pn-lthead">
		<tr>
			<th width="20"><input type="checkbox" onclick="Pn.checkbox('ids',this.checked)"/></th>
			<th>用户编号</th>
			<th>用户账号</th>
			<th>真实姓名</th>
			<th>性别</th>
			<th>生日</th>
			<th>邮箱</th>
		   <th>部门名称</th>
		   <th>是否可用</th>
		    <th>头像</th>
			<th>操作选项</th>
		</tr>
	</thead>
	<tbody class="pn-ltbody">
	<c:forEach  items="${LIST}"  var="users">
	   <tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
			<td><input type="checkbox" name="ids" value="${users.id}"/></td>
			<td align="center">${users.id}</td>
			<td align="center">${users.loginname}</td>
			<td align="center">${users.realname}</td>
			<td align="center">${users.sex}</td>
			<td align="center">${users.birthday}</td>
			<td align="center">${users.email}</td>
			<td align="center">${users.dept.name}</td>
			<td align="center">${users.isenabledTxt}</td>
			<td align="center"><img src="../upload/${users.pic}" height="50px" width="50px"/></td>
	
		
			<td align="center">
			<a href="get.do?id=${users.id}" class="pn-opt">修改</a>
			<a href="delete.do?id=${users.id}" class="pn-opt">删除</a>
			</td>
		</tr>
		
	</c:forEach>
	
	</tbody>
</table>
<input class="del-button" type="submit"  value="删除"/>

<div style="margin-top:15px;float:right">
当前第${PAGE}页/共${PAGECOUNT}页
<a href="list.do?page=1&loginname=${QUERY.loginname}&isenabled=${QUERY.isenabled}">首页</a>
<c:if test="${PAGE-1>0}">
<a href="list.do?page=${PAGE-1}&loginname=${QUERY.loginname}&isenabled=${QUERY.isenabled}">上一页</a>
</c:if>
<c:if test="${PAGE+1<=PAGECOUNT}">
<a href="list.do?page=${PAGE+1}&loginname=${QUERY.loginname}&isenabled=${QUERY.isenabled}">下一页</a>
</c:if>
<a href="list.do?page=${PAGECOUNT}&loginname=${QUERY.loginname}&isenabled=${QUERY.isenabled}">尾页</a>
</div>
</form>
<form action="list.do?&loginname=${QUERY.loginname}&isabled=${QUERY.isenabled}">转到第<input type="text" name="page"/>页<input type="submit" value="确定"/></form>
 </div>
</form>
</body>
</html>