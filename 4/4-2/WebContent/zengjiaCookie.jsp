

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> ����Cookie </title>
</head>
<body>
<%
//��ȡ�������
String name = request.getParameter("name");
//�Ի�ȡ�����������Ϊֵ������һ��Cookie����
Cookie c = new Cookie("username" , name);
//����Cookie�������������
c.setMaxAge(24 * 3600);
//��ͻ�������Cookie����
response.addCookie(c);
%>
</body>
</html>