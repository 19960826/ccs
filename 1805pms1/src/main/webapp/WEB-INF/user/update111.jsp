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
<title>user-update</title>
</head>
<body>
	<div class="box-positon">
		<div class="rpos">当前位置：用户 - 修改</div>
		<form class="ropt">
			<input type="submit" onclick="this.form.action='queryuser.do';"
				value="返回列表" class="return-button" />
		</form>
		<div class="clear"></div>
	</div>
	<div class="body-box" style="float: right">
		<form id="jvForm" action="updateuser.do?id=${us.id }"  method="post">
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
							class="pn-frequired">*</span> 用户名：</td>
						<td width="80%" class="pn-fcontent"><input type="text"
							class="required" name="loginname" maxlength="100"
							value="${us.loginname }" /></td>
					</tr>

					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h"><span
							class="pn-frequired">*</span> 真实姓名：</td>
						<td width="80%" class="pn-fcontent"><input type="text"
							class="required" name="realname" maxlength="80" size="60"
							value="${us.realname }" /></td>
					</tr>
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">性别:</td>
						<td width="80%" class="pn-fcontent">
						<c:if test="${us.sex=='男' }">
								<input type="radio" class="required" name="sex" value="1"
									maxlength="80"  checked="checked"   />男
						<input type="radio" class="required" name="sex" value="2"
									maxlength="80"  />女
						</c:if>
						 <c:if test="${us.sex=='女' }">
								<input type="radio" class="required" name="sex" value="1"
									maxlength="80" />男
						<input type="radio" class="required" name="sex" value="2"
									maxlength="80" checked="checked" />女
						</c:if></td>
					</tr>
					<tr>
						<tr>
							<td width="20%" class="pn-flabel pn-flabel-h">出生日期:</td>
							<td width="80%" class="pn-fcontent"><input type="text"
								class="required" name="birthday" maxlength="80" size="60"
								value="${us.birthday }" /></td>
						</tr>
					</tr>
					<tr>
						<tr>
							<td width="20%" class="pn-flabel pn-flabel-h"><span
								class="pn-frequired">*</span> email:</td>
							<td width="80%" class="pn-fcontent"><input type="text"
								class="required" name="email" maxlength="80" size="60"
								value="${us.email }" /></td>
						</tr>
					</tr>
					<tr>

						<td width="20%" class="pn-flabel pn-flabel-h">部门名称:</td>
						<td width="80%" class="pn-fcontent">
						<select name="dept">
								<!-- 显示所属部门 -->
								<c:forEach items="${dept }" var="dep">
									  <c:if test=" ${us.dept==dep.id  }">
										<option value="${dep.id  }"  selected="selected">${dep.deptname}</option>
									</c:if> 
									<!-- 显示其他部门 -->
									 <c:if test=" ${us.dept!=dep.id }">
										<option value="${dep.id }">${dep.deptname }</option>
									</c:if> 
								</c:forEach>
						</select>
						</td>
					</tr>

					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">是否可用:</td>
						<td width="80%" class="pn-fcontent">
						<c:if test="${us.enabled==1 }">
								<input type="radio" class="required" name="enabled" value="3"
									maxlength="80" checked="checked" />可用
						<input type="radio" class="required" name="enabled" value="4"
									maxlength="80" />不可用
						</c:if>
						 <c:if test="${us.enabled==2}">
								<input type="radio" class="required" name="enabled" value="3"
									maxlength="80" />可用
						<input type="radio" class="required" name="enabled" value="4"
									maxlength="80" checked="checked" />不可用
						</c:if></td>
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