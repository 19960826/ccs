

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="../res/lecheng/css/admin.css" rel="stylesheet" type="text/css" />
<link href="../res/common/css/theme.css" rel="stylesheet" type="text/css" />
<link href="../res/common/css/jquery.validate.css" rel="stylesheet" type="text/css" />
	
<link href="../res/common/css/jquery.treeview.css" rel="stylesheet"type="text/css" />
	
<link href="../res/common/css/jquery.ui.css" rel="stylesheet" type="text/css" />
	

<!-- <script src="/thirdparty/ckeditor/ckeditor.js" type="text/javascript"></script> -->
<!-- <script src="/thirdparty/My97DatePicker/WdatePicker.js" type="text/javascript"></script> -->
<script type="text/javascript" src="res/fckeditor/fckeditor.js"></script>
<script src="../res/common/js/jquery.js" type="text/javascript"></script>
<script src="../res/common/js/jquery.ext.js" type="text/javascript"></script>
<script src="../res/common/js/jquery.form.js" type="text/javascript"></script>
<script src="../res/common/js/lecheng.js" type="text/javascript"></script>
<script src="../res/lecheng/js/admin.js" type="text/javascript"></script>
<!-- 引入jQuery -->
<script type="text/javascript" language="javascript" src="js/jquery-1.11.0.min.js"></script>
<!-- 引入日期控件 -->
<script type="text/javascript" language="javascript" src="../js/DatePicker/WdatePicker.js"></script>
<link rel="stylesheet" href="../res/css/style.css" />
<title>user-update</title>
<script type="text/javascript">
//用户名：数字+字母，结束之前不能全部都是数字，6-16
var CHKLOGINNAME="^(?![0-9]+$)[a-zA-Z0-9]{6,16}$";
//出生日期     yyyy-MM-dd  月份1-12     日期1-31
var CHKDATE="^[0-9]{4}-0?[1-9]|1[0-2]-0?[1-9]|[1-2][0-9]|3[0-1]$";
//邮箱xxxxxx@xxx.com,可以包含_      企业邮箱qwe@huewei.com.cn
var CHKEMAIL="^[0-9a-zA-Z]+@[a-z0-9]{2,5}(\\.[a-z]{2,3}){1,2}$";
//真实姓名
var CHKREALNAME="^[\u4e00-\u9fa5]{2,}$";
/* //验证用户名
function chkloginname(){
	//获取用户名
	var lgEle=document.getElementById("loginname");
	var loginname=lgEle.value;
	//定义匹配用户名的正则表达式
	var reg=new RegExp(CHKLOGINNAME);
	//获取用户名是否输入成功的元素对象
	var spanEle=document.getElementById("resultName");
	if(reg.test(loginname)){//表示输入正确
		spanEle.innerHTML="✔";
		spanEle.style.color="green";
		return true;
	}else{//输入失败
		spanEle.innerHTML="用户名必须包含数字和字母，并且不能低于六位";
		spanEle.style.color="red";
		//清空文本框
		lgEle.value="";
		//重新聚焦
		lgEle.focus();
		return false;
	}
} */
//验证用户名
/* function chkloginname(){
	var loginname=$("#loginname").val();
	//匹配正则
	var reg=new RegExp(CHKLOGINNAME);
	if(reg.test(loginname)){
		$("#resultName").html("✔");
		$("#resultName").css("color","green");
	   return true;
	}else{
		$("#resultName").html("用户名必须包含数字和字母，并且不能低于六位");
		$("#resultName").css("color","red");
		//清空
		$("#loginname").val("");
		$("#loginname").focus();
		return false;
	}
}
 */

/* //验证真实姓名
function chkRealName(){
	//获取真实姓名
	var realnameEle=document.getElementById("realname");
	var realname=realnameEle.value;
	//匹配正则
	var reg=new RegExp(CHKREALNAME);
	//获取成功匹配的元素
	var spanEle=document.getElementById("resultRealName");
	if( reg.test(realname)){
		spanEle.innerHTML="✔";
		spanEle.style.color="green";
		return true;
	}else{
		spanEle.innerHTML="汉字不能低于两位";
		spanEle.style.color="red";
		//清空文本框
		realnameEle.value="";
		//重新聚焦
		realnameEle.focus();
		return false;
	}
} */
//验证真实姓名
/* function chkRealName(){
	//获取真实姓名
	var realname=$("#realname").val();
	//匹配正则
	var reg=new RegExp(CHKREALNAME);
	if( reg.test(realname)){
		$("#resultRealName").html("✔");
		$("#resultRealName").css("color","green");
		return true;
	}else{
		$("#resultRealName").html("汉字不能低于两位.");
		$("#resultRealName").css("color","red");
		//清空
		$("#realname").val("");
		//聚焦
		$("#realname").focus();
		return false;
	}
} */

/* //验证邮箱
function  chkEmail(){
	//获取邮箱
	var emailEle=document.getElementById("email");
	var email=emailEle.value;
	//匹配正则
	var reg=new RegExp(CHKEMAIL);
	//获取是否成功的元素
	var spanEle=document.getElementById("resultEmail");
	if(reg.test(email)){
		spanEle.innerHTML="✔";
		spanEle.style.color="green";
	}else{
		spanEle.innerHTML="邮箱格式不正确";
		spanEle.style.color="red";
		//清空文本框
		emailEle.value="";
		//重新聚焦
		emailEle.focus();
	}
} */
//验证邮箱
/* function chkEmail(){
	var email=$("#email").val();
	//匹配正则
	var reg=new RegExp(CHKEMAIL);
	if(reg.test(email)){
		$("#resultEmail").html("✔");
		$("#resultEmail").css("color","green");
	
	}else{
		$("#resultEmail").html("邮箱格式不正确");
		$("#resultEmail").css("color","red");
		//清空
		$("#email").val("");
		$("#email").focus();
	}
} */
//验证所有
/* function chkAll(){
	return chkloginname()&&chkEmail()&&chkRealName();
}
 */
//下拉菜单 文档就绪事件
$(function(){
	//下拉框change事件
	$("#d1").change(
		function(){
			$("#d2").empty();
			//ajax异步提交
			$.post("getdept.do",//url
					{pid:this.value},//传的参数
					function(data){
						//如果传进来的有数据
						if(data!=null){
						$(data).each(function(){
				$("#d2").append("<option value="+this.id+">"+this.name+"</option>");
						})
						}
					},//成功后执行
					"json"//返回类型
					)
			
	 }
);
	
})
</script>
</head>
<body>
	<div class="box-positon">
		<div class="rpos">当前位置: 用户管理 - 修改</div>
		<form class="ropt">
			<input type="button" onclick="history.back();"
				value="返回列表" class="return-button" />
				
		</form>
		<div class="clear"></div>
	</div>
	<div class="body-box" style="float: right">
		<form id="jvForm" action="update.do" method="post"  onsubmit="return chkAll()">
			<table cellspacing="1" cellpadding="2" width="100%" border="0"
				class="pn-ftable">
				<tbody>
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h"><span
							class="pn-frequired"></span> <span class="pn-frequired">${MSG}</span>
						</td>
					</tr>
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h"><span
							class="pn-frequired">*</span> 用户名:</td>
						<td width="80%" class="pn-fcontent"><input type="text"
							class="required" name="loginname" maxlength="100"
							value="${user.loginname }"  id="loginname"   onblur="chkloginname()"/>
							<span id="resultName"></span>
							</td>
						</tr>
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h"><span
							class="pn-frequired">*</span> 真实姓名:</td>
						<td width="80%" class="pn-fcontent"><input type="text"
							class="required" name="realname" maxlength="100"
							value="${user.realname }"  id="realname"  onblur="chkRealName()"/>
							<span id="resultRealName"></span>
							</td>
						</tr>
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">性别:</td>
						<td width="80%" class="pn-fcontent">
						<c:if test="${user.sex=='男' }">
							<input type="radio" name="sex" value="男" checked="checked" />男
						    <input type="radio" name="sex" value="女" />女
						</c:if> 
						<c:if test="${user.sex=='女' }">
							<input type="radio" name="sex" value="男" />男
						    <input type="radio" name="sex" value="女" checked="checked" />女
						</c:if></td>
					</tr>
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">出生日期:</td>
						<td width="80%" class="pn-fcontent"><input type="text"
							class="Wdate" name="birthday" maxlength="80"  onclick="WdatePicker()"
							value="${user.birthdayTxt }" /></td>
					</tr>
					<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
					<span class="pn-frequired">*</span>
						部门:</td><td width="80%" class="pn-fcontent">
						<select name="d1" id="d1">
						<c:forEach items="${list}" var="dept">
						<c:if test="${user.dept.pid==dept.id}">
						<!-- 显示所属部门 -->
						<option value="${dept.id}" selected="selected">${dept.name}</option>
						</c:if>
						<c:if test="${user.dept.pid!=dept.id}">
						<!-- 显示其他部门 -->
						<option value="${dept.id}" >${dept.name}</option>
						</c:if>
						</c:forEach>
						<select>
						<select name="dept.id" id="d2">
						<c:forEach items="${plist}" var="dept2">
						<c:if test="${user.dept.id==dept2.id}">
						<!-- 显示所属部门 -->
						<option value="${dept2.id}" selected="selected">${dept2.name}</option>
						</c:if>
						<c:if test="${user.dept.id!=dept2.id}">
						<!-- 显示其他部门 -->
						<option value="${dept2.id}" >${dept2.name}</option>
						</c:if>
						</c:forEach>
						<select>
					</td>
				</tr>

				<%-- 	<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">是否可用:</td>
						<td width="80%" class="pn-fcontent"><c:if
								test="${us.enabled==1 }">
								<input type="radio" class="required" name="enabled"
									maxlength="80" value="1" checked="checked" />可用
								<input type="radio" class="required" name="enabled"
									maxlength="80" value="2" />不可用
							</c:if> <c:if test="${us.enabled==2 }">
								<input type="radio" class="required" name="enabled"
									maxlength="80" value="1" />可用
								<input type="radio" class="required" name="enabled"
									maxlength="80" value="2" checked="checked" />不可用
							</c:if></td>
					</tr> --%>
					<input type="hidden" value="${user.isenabled}" name="isenabled"/>
					<input type="hidden" value="${user.id}" name="id"/>
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">邮箱:</td>
						<td width="80%" class="pn-fcontent"><input type="text"
							class="required" name="email" maxlength="80"
							value="${user.email}" id="email"   onblur="chkEmail()"/>
							<span  id="resultEmail"></span>
							</td>
					</tr>
					
				</tbody>
				<tbody>
					<tr>
						<td class="pn-fbutton" colspan="2">
						<input type="submit" class="submit" value="提交" /> &nbsp; 
						<input type="reset"  class="reset" value="重置" /></td>
							
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>