
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


<!-- 引入jQuery -->
<script type="text/javascript" language="javascript" src="js/jquery-1.11.0.min.js"></script>
<!-- 引入日期控件 -->
<script type="text/javascript" language="javascript" src="js/DatePicker/WdatePicker.js"></script>

<link rel="stylesheet" href="res/css/style.css" />
<!-- 引入标签库 -->
<%@  taglib  uri="http://java.sun.com/jstl/core_rt"     prefix="c" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>title-add</title>
<script type="text/javascript">
//用户名：数字+字母，结束之前不能全部都是数字，6-16
var CHKTITLE="^[\u4e00-\u9fa5]{2,}$";
var CHKCONTENT="^[\s\S]*.*[^\s][\s\S]*$";
var CHKANUTHOR="^[\u4e00-\u9fa5]{2,}$";
/* //验证用户名
function chkloginname(){
	//获取用户名
	var lgEle=document.getElementById("title");
	var loginname=lgEle.value;
	//定义匹配用户名的正则表达式
	var reg=new RegExp(CHKTITLE);
	//获取用户名是否输入成功的元素对象
	var spanEle=document.getElementById("resultName");
	if(reg.test(loginname)){//表示输入正确
		spanEle.innerHTML="✔";
		spanEle.style.color="green";
		return true;
	}else{//输入失败
		spanEle.innerHTML="广告标题不能少于一个字";
		spanEle.style.color="red";
		//清空文本框
		lgEle.value="";
		//重新聚焦
		lgEle.focus();
		return false;
	}
} */
//验证文章标题
function chkloginname(){
	//获取真实姓名
	var title=$("#title").val();
	//匹配正则
	var reg=new RegExp(CHKTITLE);
	if( reg.test(title)){
		$("#resultName").html("✔");
		$("#resultName").css("color","green");
		return true;
	}else{
		$("#resultName").html("文章标题不能少于两个字.");
		$("#resultName").css("color","red");
		//清空
		$("#title").val("");
		//聚焦
		$("#title").focus();
		return false;
	}
}
/*    //验证文章内容
function chkcontent(){
	//获取文章内容
	var ccEle=document.getElementById("content");
	var content=ccEle.value;
	//定义匹配用户名的正则表达式
	var reg=new RegExp(CHKCONTENT);
	//获取用户名是否输入成功的元素对象
	var spanEle=document.getElementById("resultContent");
	if(reg.test(content)){//表示输入正确
		spanEle.innerHTML="✔";
		spanEle.style.color="green";
		return true;
	}else{//输入失败
		spanEle.innerHTML="广告内容不能少于十个字";
		spanEle.style.color="red";
		//清空文本框
		ccEle.value="";
		//重新聚焦
		ccEle.focus();
		return false;
	}
}*/
//验证文章内容
function chkcontent(){
	//获取真实姓名
	var cname=$("#content").val();
	//匹配正则
	var reg=new RegExp(CHKCONTENT);
	if( reg.test(cname)){
		$("#resultContent").html("✔");
		$("#resultContent").css("color","green");
		return true;
	}else{
		$("#resultContent").html("广告内容不能少于十个字.");
		$("#resultContent").css("color","red");
		//清空
		$("#cname").val("");
		//聚焦
		$("#cname").focus();
		return false;
	}
}
/*   //验证创建人
function chkCman(){
	//获取创建人
	var ccEle=document.getElementById("cman");
	var cman=ccEle.value;
	//定义匹配用户名的正则表达式
	var reg=new RegExp(CHKANUTHOR);
	//获取用户名是否输入成功的元素对象
	var spanEle=document.getElementById("resultCman");
	if(reg.test(cman)){//表示输入正确
		spanEle.innerHTML="✔";
		spanEle.style.color="green";
		return true;
	}else{//输入失败
		spanEle.innerHTML="名字不能少于两个字";
		spanEle.style.color="red";
		//清空文本框
		ccEle.value="";
		//重新聚焦
		ccEle.focus();
		return false;
	}
} */
  //验证创建人
  function chkCman(){
	  //获取创建人
	  var cman=$("#cman").val();
	//定义匹配用户名的正则表达式
		var reg=new RegExp(CHKANUTHOR);
	if(reg.test(cman)){
		$("#resultCman").html("✔");
		$("#resultCman").css("color","green");
		return true;
	}else{
		$("#resultCman").html("名字不能少于两个字");
		$("#resultCman").css("color","red");
		//清空
		$("#cman").val("");
		$("#cman").focus;
		return false;
	}
  }
  function chkAll( ){
	  return chkloginname()&&chkcontent()&&chkCman();
  }
</script>
</head>
<body>
<div class="box-positon">
	<div class="rpos">当前位置：文章 - 添加</div>
	<form class="ropt">
		<input type="submit" onclick="this.form.action='querytitle.do';" value="返回列表" class="return-button"/>
	</form>
	<div class="clear"></div>
</div>
<div class="body-box" style="float:right">
	<form id="jvForm" action="addtitle.do" method="post"  onsubmit="return chkAll()">
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
						文章:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="title"  maxlength="100"  id="title"  onblur="chkloginname()"/>
						<span id="resultName"></span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						内容:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="content" maxlength="100" id="content"  onblur="chkcontent()"/>
						<span id="resultContent"></span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						作者:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="author" maxlength="100"  id="cman"  onblur="chkCman()"/>
						<span id="resultCman"></span>
						</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
					<span class="pn-frequired">*</span>
						创建时间:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="Wdate" name="crtime" maxlength="100"   onclick="WdatePicker()"/>
					</td>
				</tr>
		
		     	<tr>	
					<td width="20%" class="pn-flabel pn-flabel-h">
						频道名字:</td><td width="80%" class="pn-fcontent">
					    <select name="channel">
								     <c:forEach  items="${list }"  var="tit">
					     		    <option value="${tit.id }" >${tit.cname }</option>
					     </c:forEach>
					    </select>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						是否推荐:</td><td width="80%" class="pn-fcontent">
						<input type="radio" class="required" name="isremod" value="1"  maxlength="80"   checked/>推荐
						<input type="radio" class="required" name="isremod" value="2"  maxlength="80"/>不推荐
					</td>
				</tr>
				</tr>
			
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						是否热度:</td><td width="80%" class="pn-fcontent">
						<input type="radio" class="required" name="ishot" value="1"  maxlength="80"   checked/>热度
						<input type="radio" class="required" name="ishot" value="2"  maxlength="80"/>不热度
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