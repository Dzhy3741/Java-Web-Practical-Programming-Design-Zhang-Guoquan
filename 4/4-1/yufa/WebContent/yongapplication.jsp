<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>application测试</title>
</head>
<body>
<!-- JSP声明 -->
<%!
int i;
%>
<!-- 将i值自加后放入application的变量内 -->
<%
application.setAttribute("counter",String.valueOf(++i));
%>
<!-- 输出i值 -->
<%=i%>
</body>
</html>
