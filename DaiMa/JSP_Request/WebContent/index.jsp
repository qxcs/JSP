<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Request内置对象</h1>
	<form name="regForm" action="request.jsp" method="post">
		<table>
			<tr>
				<td>名字</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>爱好</td>
				<td>
				<input type="checkbox" name="hobby"  value="music"/>音乐
				<input type="checkbox" name="hobby" value="movie"/>电影
				<input type="checkbox" name="hobby" value="game"/>游戏
				<input type="checkbox" name="hobby" value="book"/>看书
				</td>
			</tr>
			<tr>
			<td colspan="2"><input type="submit" name="确认"></td>
			</tr>
		</table>
	
	</form>
</body>
</html>