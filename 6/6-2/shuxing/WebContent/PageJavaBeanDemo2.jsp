<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>���page��Χ��JavaBean����ֵ</title>
</head>
<body>
	<jsp:useBean id="user" scope="page" class="com.javaweb.ch07.UserBean"></jsp:useBean>
	<%--���username����--%>
	�û�����<jsp:getProperty name="user" property="username"/><br>
	<%--���password����--%>
	���룺<jsp:getProperty name="user" property="password"/>
</body>
</html>
