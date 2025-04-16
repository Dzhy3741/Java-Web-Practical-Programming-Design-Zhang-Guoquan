

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> 输出表达式值 </title>
	<meta name="website" content="http://www.crazyit.org" />
</head>
<%!
public int count;

public String info()
{
	return "hello";
}
%>
<body>
<!-- 使用表达式输出变量值 -->
<%=count++%>
<br/>
<!--  使用表达式输出方法返回值 -->
<%=info()%>
</body>
</html>