
<!-- 通过errorPage属性指定异常处理页面 -->
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> JSP脚本的异常机制 </title>
</head>
<body>
<%
int a = 6;
int c = a / 0;
%>
</body>
</html>