

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> JSP���� </title>
	<meta name="website" content="http://www.crazyit.org" />
</head>
<!-- ������JSP�������� -->
<%!
//����һ�����α���
public int count;
//����һ������
public String info()
{
	return "hello";
}
%>
<body>
<%
//��count��ֵ������ټ�1
out.println(count++);
%>
<br/>
<%
//���info()�����ķ���ֵ
out.println(info());
%>
</body>
</html>