<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>����application��Χ��JavaBean</title>
</head>
<body>
	<%--ͨ��useBean����ָ������JavaBean --%>
	<jsp:useBean id="user" scope="application" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--����username���ԣ���ֵΪapplication_username --%>
	<jsp:setProperty name="user" property="username" value="application_username"/>
	<%--����password���ԣ���ֵΪapplication_password --%>
	<jsp:setProperty name="user" property="password" value="application_password"/>
	<%--��ת��ApplicationJavaBeanDemo2.jsp --%>
	<a href="ApplicationBeanDemo2.jsp">��ת��ApplicationJavaBeanDemo2.jsp</a>
</body>
</html>