

<%@ page contentType="text/html; charset=GBK" language="java"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> new document </title>
	<meta name="website" content="http://www.sohu.org" />
</head>
<body>
<%
//下面代码将出现运行时异常
int a = 6;
int b = 0;
int c = a / b;
%>
</body>
</html>