

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>application����</title>
</head>
<body>
<!-- JSP���� -->
<%!
int i;
%>
<!-- ��iֵ�ԼӺ����application�ı����� -->
<%
application.setAttribute("counter",String.valueOf(++i));
%>
<!-- ���iֵ -->
<%=i%>
</body>
</html>