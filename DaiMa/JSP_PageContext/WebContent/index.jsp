<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.setAttribute("name", "qx");
%>
	<!-- 测试pageContext的getSession方法 -->
	name:<%= pageContext.getSession().getAttribute("name")%><br>
<%
	//测试include方法
	pageContext.include("time.jsp");
%>

</body>
</html>