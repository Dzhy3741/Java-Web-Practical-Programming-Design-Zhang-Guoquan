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
