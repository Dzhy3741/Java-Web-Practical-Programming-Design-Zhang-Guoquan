<%@ page language="java" contentType="text/html;charset=gb2312"%>
<html>
<head>
	<title>����JavaBean����</title>
</head>
<body>
	<%--ͨ��useBean����ָ������JavaBean --%>
	<jsp:useBean id="user" scope="page" class="com.javaweb.ch07.UserBean">
	</jsp:useBean>
	<%--����username���ԣ���ֵΪabc --%>
	<jsp:setProperty name="user" property="username" value="abc" />
	<%--����password���ԣ���ֵΪ123--%>
	<jsp:setProperty name="user" property="password" value="123"/>
	<% 
		// ��ӡ���user��username����
		out.println("�û�����" + user.getUsername() + "<br>");
		// ��ӡ���user��password����
		out.println("�û����룺" + user.getPassword());
	%>
</body>
</html>
