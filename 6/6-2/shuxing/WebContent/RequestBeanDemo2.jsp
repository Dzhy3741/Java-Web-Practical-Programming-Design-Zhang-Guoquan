<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>获得request范围的JavaBean属性值</title>
</head>
<body>
	<jsp:useBean id="user" scope="request" class="com.javaweb.ch07.UserBean"></jsp:useBean>
	<%--获得username属性--%>
	用户名：<jsp:getProperty name="user" property="username"/><br>
	<%--获得password属性--%>
	密码：<jsp:getProperty name="user" property="password"/>
</body>
</html>
