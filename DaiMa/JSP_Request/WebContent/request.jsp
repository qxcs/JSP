<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>request对象</h1>
	<%request.setAttribute("password", "123456"); //request存储属性值%>
	
	名字 :<%=request.getParameter("name")%></br> 
	爱好:
	<%
		String[] hobbies = request.getParameterValues("hobby");
		if (hobbies != null && hobbies.length != 0) {
			for (int i = 0; i < hobbies.length; i++) {
				out.print(hobbies[i] + "&nbsp;&nbsp;");
			}
		}
	%>
	</br>
	密码:
	<%=request.getAttribute("password")%>

</body>
</html>