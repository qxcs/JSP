<%@page import="org.apache.tomcat.util.http.Cookies"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
</head>
<body>

	<!-- 读取cookies信息 -->
	<%
		String name = "";
		String password = "";

		Cookie[] cookies = request.getCookies();
		if (cookies != null && cookies.length > 0) {
			for(int i=0;i<cookies.length;i++){
				if(cookies[i].getName().equals("name")){
					name=cookies[i].getValue();
				}
				if(cookies[i].getName().equals("password")){
					password=cookies[i].getValue();
				}
			}
		}
	%>

	<form name="loginForm" action="doLogin.jsp" method="post">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text" value="<%=name%>" name="name" /></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" value="<%=password%>" name="password" /></td>
			</tr>
			<tr>
				<td colspan="2" align="left"><input type="checkbox"
					value="useCookies" name="isUseCookie" />十天内免登录</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="登录"></td>
			</tr>
		</table>
	</form>


</body>
</html>