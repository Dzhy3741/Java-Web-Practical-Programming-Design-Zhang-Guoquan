

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>测试config内置对象</title>
</head>
<body>
<!-- 输出该JSP名为name的配置参数 -->
name配置参数的值:<%=config.getInitParameter("name")%><br/>
<!-- 输出该JSP名为age的配置参数 -->
age配置参数的值:<%=config.getInitParameter("age")%>
</body>
</html>