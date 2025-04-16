

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!-- 指定info信息 -->
<%@ page info="this is a jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> 测试page指令的info属性 </title>
	<meta name="website" content="http://www.sohu.org" />
</head>
<body>
<!--  输出info信息 -->
<%=getServletInfo()%>
</body>
</html>