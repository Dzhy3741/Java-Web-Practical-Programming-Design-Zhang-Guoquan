<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>�Ƴ�JavaBean</title>
</head>
<body>
	<%--ͨ��userBean����ָ������JavaBean --%>
	<jsp:useBean id="user" class="com.javaweb.ch07.UserBean" scope="page">
	</jsp:useBean>
	<%--����username���ԣ���ֵΪadmin--%>
	<jsp:setProperty name="user" property="username" value="admin"/>
	<%--����password���ԣ���ֵΪroot --%>
	<jsp:setProperty name="user" property="password" value="root"/>
	<% 
		//�Ƴ�page��ΧJavaBean
		pageContext.removeAttribute("user");
	%>
	<%--���username����--%>
	<jsp:getProperty name="user" property="username"/>
	<%--���password����--%>
	<jsp:getProperty name="user" property="password"/>
</body>
</html>
