<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=士utf-8">
<title>处理登录界面</title>
</head>
<body>
	<%
		//首先判断是否勾选了免登陆按钮
		Boolean useCookie = false;//默认没有
		String[] isUseCookies = request.getParameterValues("isUseCookie");
		Cookie nameCookie = new Cookie("name", "defaultName");
		Cookie passwordCookie = new Cookie("password", "defaultPassword");
	%>
	<%
		//处理cookie
		if (isUseCookies != null && isUseCookies.length > 0) {
			useCookie = true;

			nameCookie.setValue(request.getParameter("name"));
			nameCookie.setMaxAge(86400);

			passwordCookie.setValue(request.getParameter("password"));
			passwordCookie.setMaxAge(86400);

			response.addCookie(nameCookie);
			response.addCookie(passwordCookie);
		} else {
			useCookie = false;

			Cookie[] cookies = request.getCookies();
			if (cookies != null && cookies.length > 0) {
				//如果有cookies，就清空
				for (int i = 0; i < cookies.length; i++) {
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
			}

		}
	%>
	<!-- 显示用户信息 -->
	用户名是: <%=request.getParameter("name") %><br>
	密码是: <%=request.getParameter("password") %><br>
	是否使用cookie: <%=useCookie %><br>
</body>
</html>