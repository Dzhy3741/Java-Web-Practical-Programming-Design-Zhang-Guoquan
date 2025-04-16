<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>设置JavaBean属性</title>
</head>
<body>
	<%--通过useBean动作指定调用JavaBean --%>
	<jsp:useBean id="user" scope="page" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--根据所有的参数设置JavaBean中属性 --%>
	<jsp:setProperty name="user" property="*"/>
	<% 
		// 打印输出user的username属性
		out.println("用户名：" + user.getUsername() + "<br>");
		// 打印输出user的password属性
		out.println("用户密码：" + user.getPassword());
	%>
</body>
</html>
