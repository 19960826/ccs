
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 引入标签库 -->
<%@  taglib  uri="http://java.sun.com/jstl/core_rt"     prefix="c" %>

<link href="../res/lecheng/css/admin.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/theme.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/jquery.validate.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/jquery.treeview.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/jquery.ui.css" rel="stylesheet" type="text/css"/>

<!-- <script src="/thirdparty/ckeditor/ckeditor.js" type="text/javascript"></script> -->
<!-- <script src="/thirdparty/My97DatePicker/WdatePicker.js" type="text/javascript"></script> -->
<script type="text/javascript" src="../res/fckeditor/fckeditor.js"></script>
<script src="../res/common/js/jquery.js" type="text/javascript"></script>
<script src="res/common/js/jquery.ext.js" type="text/javascript"></script>
<script src="../res/common/js/jquery.form.js" type="text/javascript"></script>
<script src="res/common/js/lecheng.js" type="text/javascript"></script>
<script src="res/lecheng/js/admin.js" type="text/javascript"></script>
<script src="js/jquery-1.11.0.min.js" type="text/javascript" ></script>


<link rel="stylesheet" href="../res/css/style.css" />


<!-- 引入日期控件 -->
<script type="text/javascript" language="javascript" src="../js/DatePicker/WdatePicker.js"></script>

<link rel="stylesheet" href="../res/css/style.css" />




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user-add</title>
<script type="text/javascript">
//用户名：数字+字母，结束之前不能全部都是数字，6-16
var CHKLOGINNAME="^(?![0-9]+$)[a-zA-Z0-9]{6,16}$";
//密码:数字+字母，结束之前不能全部都是数字和字母，6-16
var CHKPASSWORD="^(?![0-9]+$)(?![a-zA-Z]+$)[a-zA-Z0-9]{6,16}$";
//出生日期     yyyy-MM-dd  月份1-12     日期1-31
var CHKDATE="^[0-9]{4}-0?[1-9]|1[0-2]-0?[1-9]|[1-2][0-9]|3[0-1]$";
//邮箱xxxxxx@xxx.com,可以包含_      企业邮箱qwe@huewei.com.cn
var CHKEMAIL="^[0-9a-zA-Z]+@[a-z0-9]{2,5}(\\.[a-z]{2,3}){1,2}$";
//真实姓名
var CHKREALNAME="^[\u4e00-\u9fa5]{2,}$";
/*      //验证用户名
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
}*/


/*   //验证密码
function chkpassword(){
	//获取密码
	var pwdEle=document.getElementById("password");
	var password=pwdEle.value;
	//定义匹配用户名的正则表达式
	var reg=new RegExp(CHKPASSWORD);
	//获取密码是否输入成功的元素对象
	var spanEle=document.getElementById("resultPwd");
	if(reg.test(password)){
		spanEle.innerHTML="✔";
		spanEle.style.color="green";
		return true;
	}else{
		spanEle.innerHTML="密码必须包含数字和字母，并且不能低于六位";
		spanEle.style.color="red";
		//清空文本框
		pwdEle.value="";
		//重新聚焦
		pwdEle.focus();
		return false;
	}
}*/
/* //验证密码
function chkpassword(){
	//获取密码
	 var password=$("#password").val();
	//定义匹配密码的正则表达式
		var reg=new RegExp(CHKPASSWORD);
		if(reg.test(password)){
			$("#resultPwd").html("✔");
			$("#resultPwd").css("color","green");
			return true;
		}else{
		$("#resultPwd").html("密码必须包含数字和字母，并且不能低于六位.");
		$("#resultPwd").css("color","red");
		//清空
		$("#password").val("");
		//聚焦
		$("#password").focus;
		return false;
		}
}
//验证两次密码是否一致
function chkRePwd(){
	//获取密码的值
	var password=$("#password").val();
	var  pwd=$("#repwd").val();
	
	if(pwd==password){//表示输入正确
		$("#resultRepwd").html("✔");
		$("#resultRepwd").css("color","green");
		return true;
	}else{
		$("#resultRepwd").html("用户名必须包含数字和字母，并且不能低于六位.");
		$("#resultRepwd").css("color","red");
		//清空
		$("#pwd").val("");
		$("#pwd").focus();
		return false;
	}
} */	

/* //验证两次密码是否一致
function chkRePwd(){
	//获取密码
	var repwdEle=document.getElementById("repwd");
	var repwd=repwdEle.value;
	var password=document.getElementById("password").value;
	//获取2次密码是否输入成功的元素对象
	var spanEle=document.getElementById("resultRepwd");
	if(repwd==password){
		spanEle.innerHTML="✔";
		spanEle.style.color="green";
		return true;
	}else{
		spanEle.innerHTML="两次密码不一致";
		spanEle.style.color="red";
		//清空文本框
		repwdEle.value="";
		//重新聚焦
		repwdEle.focus();
		return false;
	}
} */
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
/* //验证真实姓名
function chkRealName(){
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
}
 */


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

/* //验证用户名
function chkloginname(){
	//获取名字的值
	var loginname=$("#loginname").val();
	//定义匹配用户名的正则表达式
	var reg=new RegExp(CHKLOGINNAME);
	if(reg.test(loginname)){//表示输入正确
		   if(chkExistLoginname(loginname)){
			   return true;
		   }else{
			   return false;
		   }
	}else{
		$("#resultName").html("用户名必须包含数字和字母，并且不能低于六位.");
		$("#resultName").css("color","red");
		//清空
		$("#loginname").val("");
		$("#loginname").focus();
		return false;
	}
} */

//验证用户名是否唯一
/* function  chkExistLoginname(loginname){
	  //默认是重复的
	  var flag=false;
	  $.ajax({
		  //请求路径
		  url:"chkuser.do",
		  //请求方式
		  type:"post",
		  //请求参数
		  data:"type=1&loginname="+loginname,
		  //是否异步
		  async:false,
		  //预期服务器返回的数据类型
		  dataType:"text",
		  //响应成功调用回调函数
		  success:function(flagg){
			  if(flagg=="true"){
				  //没有重复
				  $("#resultName").html("✔");
				  $("#resultName").css("color","green");
				  flag=true;
			  }else{//重复
				  $("#resultName").html("此用户已存在");
				  $("#resultName").css("color","red");
				  flag=false;
			  }
		  },
		  error:function(){
			  alert("请求数据失败");
		  }
	  });
	  return flag;
} */
/* //验证邮箱
function chkEmail(){
	var email=$("#email").val();
	//匹配正则
	var reg=new RegExp(CHKEMAIL);
	if(reg.test(email)){
		if(chkExistEmail(email)){
			return true;
		}else{
			return false;
		}
	
	}else{
		$("#resultEmail").html("邮箱格式不正确");
		$("#resultEmail").css("color","red");
		//清空
		$("#email").val("");
		$("#email").focus();
	}
} */
/* //验证邮箱是否重复
function chkExistEmail(email){
	 var flag=false;
	 $.ajax({
		 //请求路径
		 url:"chkuser.do",
		 //请求方式
		 type:"post",
		 //请求参数
		 data:"type=2&email="+email,
		 //是否异步
		 async:false,
		 //预期服务器返回的数据类型
		 dataType:"text",
		//响应成功调用回调函数
		 success:function(flagg){
				if(flagg=='true'){//没有重复
					$("#resultEmail").html("✔");
					$("#resultEmail").css("color","green");
					flag=true;
				}else{
					$("#resultEmail").html("此邮箱已存在");
					$("#resultEmail").css("color","red");
					flag=false;
				}
			},
			error:function(){
				alert('请求数据失败。。。');
			}
		});
		return flag;

}
//验证所有 */
function chkAll(){
	return chkloginname()&&chkpassword()&&chkRePwd()&&chkRealName()&&chkEmail();
}

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

//文件上传
function upload(){
	
	//ajax请求 局部提交
	//设置参数
	var args={
			//url 绝对路径
			url:$("#path").val()+"/upload/common.do",
			//返回类型
			dataType:"text",
			//提交方式
			type:"post",
			success:function(result){
				alert(result)
				//设置图片的属性
				$("#img").attr("src",$("#path").val()+"/upload/"+result);
				//将路径设置到隐藏域中
				$("#pic").val(result);
			}
	}
	
	//表单局部提交
	$("#jvForm").ajaxSubmit(args);
}
</script>
</head>
<body>
<input type="hidden" id="path" value="${pageContext.request.contextPath}"/>
<!--<img src="${pageContext.request.contextPath}/images/logo4.png"/>-->
<div class="box-positon">
	<div class="rpos">当前位置：用户 - 添加</div>
	<form class="ropt">
		<input type="button" onclick="history.back();" value="返回列表" class="return-button"/>
	</form>
	<div class="clear"></div>
</div>
<div class="body-box" style="float:right">
	<form id="jvForm" action="add.do" method="post"   enctype="multipart/form-data">
		<table cellspacing="1" cellpadding="2" width="100%" border="0" class="pn-ftable">
			<tbody>
			<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
					<span class="pn-frequired"></span>
						<span class="pn-frequired">${MSG}</span>
				
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						用户名称:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="loginname"  id="loginname" maxlength="100"  onblur="chkloginname()"   placeholder="请输入用户名" />
						<span id="resultName"></span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						密码:</td><td width="80%" class="pn-fcontent">
						<input type="password" class="required" name="password"  id="password"  maxlength="100"  onblur="chkpassword()"/>
						<span id="resultPwd"></span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						确认密码:</td><td width="80%" class="pn-fcontent">
						<input type="password" class="required" name="rrr"  id="repwd" maxlength="100"  onblur="chkRePwd()"/>
						<span id="resultRepwd"></span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
					<span class="pn-frequired">*</span>
						真实姓名:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="realname" maxlength="100"  id="realname"  onblur="chkRealName()"/>
						<span id="resultRealName"></span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						性别:</td><td width="80%" class="pn-fcontent">
						<input type="radio" class="required" name="sex" value="男"  maxlength="80"   checked/>男
						<input type="radio"  class="required" name="sex"  value="女" maxlength="80"/>女
					</td>
 				</tr>
				<tr>
					<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						出生日期:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="Wdate" name="birthday" maxlength="100" 
						onclick="WdatePicker()"/>
					</td>
				</tr>
				</tr>
					<tr>
					<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
					<span class="pn-frequired">*</span>
						email:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="email" maxlength="100"  id="email"  onblur="chkEmail()"/>
						<span id="resultEmail"></span>
					</td>
				</tr>
				</tr>
                <tr>
                <td width="20%" class="pn-flabel pn-flabel-h"><span
							class="pn-frequired">*</span> 部门:</td>
						<td width="80%" class="pn-fcontent">
						<select name="d1" id="d1">
								<c:forEach items="${DLIST}" var="d1">
									<option value="${d1.id}" name="id">${d1.name}</option>
								</c:forEach>
						<select>
						<select name="dept.id" id="d2">
								<c:forEach items="${PLIST}" var="d2">
									<option value="${d2.id}" name="id">${d2.name}</option>
								</c:forEach>
						<select></td>
					</tr>
					
				 <tr>
                <td width="20%" class="pn-flabel pn-flabel-h"> 头像:</td>
                
					<td width="80%" class="pn-fcontent">
					<input type="file" name="file" onchange="upload()"/>
					<img id="img" width="150px" height="150px"/>
					<!-- 提交图片路径 -->
					<input type="hidden" name="pic" id="pic" />
					</td>
			    </tr>	
			<!-- 	
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						是否可用:</td><td width="80%" class="pn-fcontent">
						<input type="radio" class="required" name="enabled" value="1"  maxlength="80"   checked/>可用
						<input type="radio" class="required" name="enabled" value="2"  maxlength="80"/>不可用
					</td>
				</tr> -->
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