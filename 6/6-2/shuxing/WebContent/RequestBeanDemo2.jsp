<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>���request��Χ��JavaBean����ֵ</title>
</head>
<body>
	<jsp:useBean id="user" scope="request" class="com.javaweb.ch07.UserBean"></jsp:useBean>
	<%--���username����--%>
	�û�����<jsp:getProperty name="user" property="username"/><br>
	<%--���password����--%>
	���룺<jsp:getProperty name="user" property="password"/>
</body>
</html>
