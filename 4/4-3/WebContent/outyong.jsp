--%>

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> out���� </title>
</head>
<body>
<%
//ע�����ݿ�����
Class.forName("com.mysql.jdbc.Driver");
//��ȡ���ݿ�����
Connection conn = DriverManager.getConnection(
	"jdbc:mysql://localhost:3306/javaee","root","32147");
//����Statement����
Statement stmt = conn.createStatement();
//ִ�в�ѯ����ȡResultSet����
ResultSet rs = stmt.executeQuery("select * from news_inf");
%>
<table bgcolor="#9999dd" border="1" width="400">
<%
//���������
while(rs.next())
{
	//��������
	out.println("<tr>");
	//��������
	out.println("<td>");
	//���������ĵڶ��е�ֵ
	out.println(rs.getString(1));
	//�رձ����
	out.println("</td>");
	//��ʼ�����
	out.println("<td>");
	//���������ĵ����е�ֵ
	out.println(rs.getString(2));
	//�رձ����
	out.println("</td>");
	//�رձ����
	out.println("</tr>");
}
%>
<table>
</body>
</html>