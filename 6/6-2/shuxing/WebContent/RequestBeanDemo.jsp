<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>����request��Χ��JavaBean</title>
</head>
<body>
	<%--ͨ��useBean����ָ������JavaBean --%>
	<jsp:useBean id="user" scope="request" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--����username���ԣ���ֵΪrequest_username --%>
	<jsp:setProperty name="user" property="username" value="request_username"/>
	<%--����password���ԣ���ֵΪrequest_password --%>
	<jsp:setProperty name="user" property="password" value="request_password"/>
	<%--����������ת��RequestJavaBeanDemo2.jsp --%>
	<jsp:forward page="RequestBeanDemo2.jsp"></jsp:forward>
</body>
</html>
