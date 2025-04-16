<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> 脚本 </title>
	<meta name="website" content="http://www.souhu.org" />
</head>
<body>
<table bgcolor="#9999dd" border="1" width="300px">
<!-- 开始Java脚本 -->
<%
for(int i = 0 ; i < 10 ; i++)
{
%>
	<!-- 上面的循环将控制<tr>标签循环 -->
	<tr>
		<td>看循环</td>
		<td><%=i%></td>
	</tr>
<%
}
%>
<table>
</body>
</html>