

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<link href="res/lecheng/css/admin.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/theme.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.validate.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.treeview.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.ui.css" rel="stylesheet" type="text/css"/>

<!-- <script src="/thirdparty/ckeditor/ckeditor.js" type="text/javascript"></script> -->
<!-- <script src="/thirdparty/My97DatePicker/WdatePicker.js" type="text/javascript"></script> -->
<script type="text/javascript" src="res/fckeditor/fckeditor.js"></script>
<script src="res/common/js/jquery.js" type="text/javascript"></script>
<script src="res/common/js/jquery.ext.js" type="text/javascript"></script>
<script src="res/common/js/jquery.form.js" type="text/javascript"></script>
<script src="res/common/js/lecheng.js" type="text/javascript"></script>
<script src="res/lecheng/js/admin.js" type="text/javascript"></script>

<link rel="stylesheet" href="../res/css/style.css" />

<!-- 引入标签库 -->
<%@  taglib  uri="http://java.sun.com/jstl/core_rt"     prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>pinda-add</title>
<script type="text/javascript">
var CHKCNAME="^[\u4e00-\u9fa5]{2,}$";
/* //验证用户名
function chkloginname(){
	//获取用户名
	var lgEle=document.getElementById("cname");
	
	var cname=lgEle.value;
	//定义匹配用户名的正则表达式
	var reg=new RegExp(CHKCNAME);
	//获取用户名是否输入成功的元素对象
	var spanEle=document.getElementById("resultName");
	if(reg.test(cname)){//表示输入正确
		spanEle.innerHTML="✔";
		spanEle.style.color="green";
		return true;
	}else{//输入失败
		spanEle.innerHTML="广告标题不能少于两个字";
		spanEle.style.color="red";
		//清空文本框
		lgEle.value="";
		//重新聚焦
		lgEle.focus();
		return false;
	}
} */
//验证真实姓名
function chkloginname(){
	//获取真实姓名
	var cname=$("#cname").val();
	//匹配正则
	var reg=new RegExp(CHKCNAME);
	if( reg.test(cname)){
		$("#resultName").html("✔");
		$("#resultName").css("color","green");
		return true;
	}else{
		$("#resultName").html("广告标题不能少于两个字.");
		$("#resultName").css("color","red");
		//清空
		$("#cname").val("");
		//聚焦
		$("#cname").focus();
		return false;
	}
}
 function chkAll(){
	 return chkloginname();
 }
</script>
</head>
<body>
<div class="box-positon">
	<div class="rpos">当前位置：频道 - 添加</div>
	<form class="ropt">
		<input type="submit" onclick="this.form.action='querypind.do';" value="返回列表" class="return-button"/>
	</form>
	<div class="clear"></div>
</div>
<div class="body-box" style="float:right">
	<form id="jvForm" action="queryaddpind.do" method="post"  onsubmit="return chkAll()">
		<table cellspacing="1" cellpadding="2" width="100%" border="0" class="pn-ftable">
			<tbody>
			<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
					<span class="pn-frequired"></span>
					<span class="pn-frequired">${Msg }</span>
				
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						 频道名字:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="cname"  maxlength="100" id="cname"  onblur="chkloginname()"/>
						<span id="resultName"></span>
					</td>
				</tr>
				
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">
						上级栏目:</td><td width="80%" class="pn-fcontent">
					    <select name="pinda">
								   <c:forEach  items="${list}"  var="lis">
					     		   <option value="${lis.id }" >${lis.cname}</option>
					     </c:forEach>
					      </select>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						级别:</td><td width="80%" class="pn-fcontent">
						<input type="radio" class="required" name="lev" value="1"  maxlength="80"   checked/>1
						<input type="radio" class="required" name="lev" value="2"  maxlength="80"/>2
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						是否叶子:</td><td width="80%" class="pn-fcontent">
						<input type="radio" class="required" name="isleaf"  value="1"  maxlength="80"   checked/>是
						<input type="radio" class="required" name="isleaf"  value="2"  maxlength="80"/>否
					</td>
				</tr>
					
			
					<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						顺序:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="sort" maxlength="100"/>
					
					</td>
				</tr>
				
			</tbody>
			<tbody>
				<tr>
					<td class="pn-fbutton" colspan="2">
						<input type="submit" class="submit" value="提交"/> &nbsp; <input type="reset" class="reset" value="重置"/>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>