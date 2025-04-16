

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> 获取GET请求参数 </title>
</head>
<body>
<%
//获取name请求参数的值
String name = request.getParameter("name");
//获取gender请求参数的值
String gender = request.getParameter("gender");
%>
<!-- 输出name变量值 -->
您的名字：<%=name%><hr/>
<!-- 输出gender变量值 -->
您的性别：<%=gender%><hr/>
</body>
</html>