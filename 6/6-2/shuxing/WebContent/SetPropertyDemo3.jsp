<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>����JavaBean����</title>
</head>
<body>
	<%--ͨ��useBean����ָ������JavaBean --%>
	<jsp:useBean id="user" scope="page" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--����username���ԣ���ֵΪusername����ֵ--%>
	<jsp:setProperty name="user" property="username" param="username"/>
	<%--����password���ԣ���ֵΪuserpassword����ֵ--%>
	<jsp:setProperty name="user" property="password" param="userpassword"/>
	<% 
		out.println("�û�����" + user.getUsername() + "<br>");
		out.println("�û����룺" + user.getPassword());
	%>
</body>
</html>
