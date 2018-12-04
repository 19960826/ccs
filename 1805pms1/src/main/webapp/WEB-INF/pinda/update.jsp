<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<link href="res/lecheng/css/admin.css" rel="stylesheet" type="text/css" />
<link href="res/common/css/theme.css" rel="stylesheet" type="text/css" />
<link href="res/common/css/jquery.validate.css" rel="stylesheet"
	type="text/css" />
<link href="res/common/css/jquery.treeview.css" rel="stylesheet"
	type="text/css" />
<link href="res/common/css/jquery.ui.css" rel="stylesheet"
	type="text/css" />

<!-- <script src="/thirdparty/ckeditor/ckeditor.js" type="text/javascript"></script> -->
<!-- <script src="/thirdparty/My97DatePicker/WdatePicker.js" type="text/javascript"></script> -->
<script type="text/javascript" src="../res/fckeditor/fckeditor.js"></script>
<script src="res/common/js/jquery.js" type="text/javascript"></script>
<script src="res/common/js/jquery.ext.js" type="text/javascript"></script>
<script src="res/common/js/jquery.form.js" type="text/javascript"></script>
<script src="res/common/js/lecheng.js" type="text/javascript"></script>
<script src="res/lecheng/js/admin.js" type="text/javascript"></script>

<link rel="stylesheet" href="res/css/style.css" />

<!-- 引入标签库 -->
<%@  taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>pinda-update</title>
<script type="text/javascript">
var CHKCNAME="^[\u4e00-\u9fa5]{2,}$";
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
		<div class="rpos">当前位置:频道-修改</div>
		<form class="ropt">
			<input type="submit" onclick="this.form.action='querypind.do';"
				value="返回列表" class="return-button" />
		</form>
		<div class="clear"></div>
	</div>
	<div class="body-box" style="float: right">
		<form id="jvForm" action="updatepind.do?id=${list.id }"  method="post" onsubmit="return chkAll()">
			<table cellspacing="1" cellpadding="2" width="100%" border="0"
				class="pn-ftable">
				<tbody>
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h"><span
							class="pn-frequired"></span> <span class="pn-frequired">
							${Msg}</span></td>
					</tr>
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h"><span
							class="pn-frequired">*</span> 频道名：</td>
						<td width="80%" class="pn-fcontent"><input type="text"
							class="required" name="cname" maxlength="100"
							value="${list.cname }"  id="cname"  onblur="chkloginname()"/>
							<span id="resultName"></span>
							</td>
					</tr>

						<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">上级栏目:</td>
						<td width="80%" class="pn-fcontent"><select name="pid">
								<c:forEach items="${pincname}" var="dep">
									<!-- 显示所属部门(默认) -->
									<c:if test="${list.pid==dep.id }">
										<option value="${dep.id }" selected="selected">${dep.cname}</option>
									</c:if>
									<!-- 显示其他部门 -->
									<c:if test="${list.pid!=dep.id }">
										<option value="${dep.pid }">${dep.cname}</option>
									</c:if>
								</c:forEach>
						</select></td>
					</tr>
				<tr>
						<td width="20%" class="pn-flabel pn-flabel-h"><span
							class="pn-frequired">*</span> 级别：</td>
						<td width="80%" class="pn-fcontent"><input type="text"
							class="required" name="lev" maxlength="100" 
							value="${list.lev }" /></td>
					</tr>
							

					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">是否叶子:</td>
						<td width="80%" class="pn-fcontent">
						<c:if test="${list.isleaf==1 }">
								<input type="radio" class="required" name="isleaf" value="1"
									maxlength="80" checked="checked" />是
						<input type="radio" class="required" name="isleaf" value="2"
									maxlength="80" />否
						</c:if>
						 <c:if test="${list.isleaf==2}">
								<input type="radio" class="required" name="isleaf" value="1"
									maxlength="80" />是
						<input type="radio" class="required" name="isleaf" value="2"
									maxlength="80" checked="checked" />否
						</c:if></td>
					</tr>
		         <tr>
		       <tr>
						<tr>
							<td width="20%" class="pn-flabel pn-flabel-h">顺序:</td>
							<td width="80%" class="pn-fcontent"><input type="text"
								class="required" name="sort" maxlength="100" 
								value="${list.sort}" /></td>
						</tr>
					</tr>
				
				</tbody>
				<tbody>
					<tr>
						<td class="pn-fbutton" colspan="2"><input type="submit"  
							class="submit" value="提交" /> &nbsp; <input type="reset"
							class="reset" value="重置" /></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>