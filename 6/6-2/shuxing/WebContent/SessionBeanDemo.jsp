<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>����session��Χ��JavaBean</title>
</head>
<body>
	<%--ͨ��useBean����ָ������JavaBean --%>
	<jsp:useBean id="user" scope="session" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--����username���ԣ���ֵΪsession_username --%>
	<jsp:setProperty name="user" property="username" value="session_username"/>
	<%--����password���ԣ���ֵΪsession_password --%>
	<jsp:setProperty name="user" property="password" value="session_password"/>
	<%--��ת��SessionJavaBeanDemo2.jsp --%>
	<a href="SessionBeanDemo2.jsp">��ת��SessionJavaBeanDemo2.jsp</a>
</body>
</html>
