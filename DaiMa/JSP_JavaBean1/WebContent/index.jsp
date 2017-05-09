<%@ page language="java" import="com.po.Users"  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>创建javabeans对象</title>
</head>
<body>
<h2>一、使用普通方式创建</h2>
<hr>
<%
	Users user=new Users();
	user.setName("qx");
	user.setPassword("123456");
%>
用户名是:<%=user.getName() %><br>
密码是:<%=user.getPassword() %><br>
<hr>
<hr>
<h2>二、使用useBean动作元素创建</h2>
<hr>
<h3>1、使用跟表单相关联进行属性设置</h3>
<a href="login.jsp">跳转到登录页面填写表单</a>
<hr>
<jsp:useBean id="myUser1" class="com.po.Users" scope="page"></jsp:useBean>
<jsp:setProperty name="myUser1" property="*"/>
用户名是:<%=myUser1.getName() %><br>
密码是:<%=myUser1.getPassword() %><br>
<hr>
<h3>2、手工为属性赋值</h3>
<hr>
<jsp:useBean id="myUser2" class="com.po.Users" scope="page"></jsp:useBean>
<jsp:setProperty name="myUser2" property="name" value="cs"/>
<jsp:setProperty name="myUser2" property="password" value="sheng10."/>
用户名是:<%=myUser2.getName() %><br>
密码是:<%=myUser2.getPassword() %><br>
<h3>3、通过url地址传参，和表单填写无关</h3>
<a href="login.jsp">跳转到登录页面填写表单，但是其实和填写无关，，是通过url获取</a>
<hr>
<jsp:useBean id="myUser3" class="com.po.Users" scope="page"></jsp:useBean>
<jsp:setProperty name="myUser3" property="name" param="url_name"/>
<jsp:setProperty name="myUser3" property="password" param="url_password"/>
用户名是:<%=myUser3.getName() %><br>
密码是:<%=myUser3.getPassword() %><br>
<hr>
<h2>三、使用getProperty获取属性值</h2>
<hr>
<hr>
用户名是:<jsp:getProperty name="myUser1" property="name"/><br>
密码是:<jsp:getProperty name="myUser1" property="password"/><br>
</body>
</html>