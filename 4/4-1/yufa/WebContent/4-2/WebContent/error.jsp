
<%@ page contentType="text/html; charset=GBK" language="java" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> 异常处理页面 </title>
</head>
<body>
异常类型是:<%=exception.getClass()%><br/>
异常信息是:<%=exception.getMessage()%><br/>
</body>
</html>