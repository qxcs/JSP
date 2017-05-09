<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日 HH时-mm分-ss秒");
Date d=new Date(session.getCreationTime() );

//保存键值对
session.setAttribute("name", "qx");
session.setAttribute("password", "123456");
session.setAttribute("lover", "zy");

%>
session创建时间<%=sdf.format(d) %><br>
session的ID<%=session.getId() %><br>
session对应客户的名字是<%=session.getAttribute("name") %><br>
session所包含的所有属性值<%
	String[] names=session.getValueNames();
for(int i=0;i<names.length;i++){
	out.print(names[i]+"&nbsp;&nbsp;");
}
%><br>


</body>
</html>