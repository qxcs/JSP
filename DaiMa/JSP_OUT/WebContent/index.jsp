<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>OUT内置对象</h1>
	<%
		out.print("<h2>静夜思</h2>");
	out.print("床前明月光</br>");
	out.print("疑是地上霜</br>");
	out.print("举头望明月</br>");
	out.print("低头思故乡</br>");
	%>
	缓冲区大小:<%=out.getBufferSize() %></br>
	缓冲区剩余大小:<%=out.getRemaining() %></br>
	缓冲区是否自动清空:<%=out.isAutoFlush() %>
</body>
</html>