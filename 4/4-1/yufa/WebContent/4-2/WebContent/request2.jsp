

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> ��ȡGET������� </title>
</head>
<body>
<%
//��ȡname���������ֵ
String name = request.getParameter("name");
//��ȡgender���������ֵ
String gender = request.getParameter("gender");
%>
<!-- ���name����ֵ -->
�������֣�<%=name%><hr/>
<!-- ���gender����ֵ -->
�����Ա�<%=gender%><hr/>
</body>
</html>