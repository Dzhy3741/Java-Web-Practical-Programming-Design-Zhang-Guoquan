<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>���application��Χ��JavaBean����ֵ</title>
</head>
<body>
	<jsp:useBean id="user" scope="application" class="com.javaweb.ch07.UserBean"></jsp:useBean>
	<%--���username����--%>
	�û�����<jsp:getProperty name="user" property="username"/><br>
	<%--���password����--%>
	���룺<jsp:getProperty name="user" property="password"/>
</body>
</html>
