<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>����page��Χ��JavaBean</title>
</head>
<body>
	<%--ͨ��useBean����ָ������JavaBean --%>
	<jsp:useBean id="user" scope="page" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--����username���ԣ���ֵΪpage_username --%>
	<jsp:setProperty name="user" property="username" value="page_username"/>
	<%--����password���ԣ���ֵΪpage_password --%>
	<jsp:setProperty name="user" property="password" value="page_password"/>
	<%--����������ת��PageJavaBeanDemo2.jsp --%>
	<jsp:forward page="PageJavaBeanDemo2.jsp"></jsp:forward>
</body>
</html>
