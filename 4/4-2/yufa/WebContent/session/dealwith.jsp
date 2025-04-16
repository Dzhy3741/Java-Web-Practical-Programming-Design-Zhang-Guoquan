<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>session对象的应用</title>
</head>
<body>
<%
int method=Integer.parseInt(request.getParameter("method"));
if(method==0){
String account=request.getParameter("account");
account = new String(account.getBytes("ISO8859_1"), "GBK");
session.setAttribute("account",account);
String password=request.getParameter("password");
password = new String(password.getBytes("ISO8859_1"), "GBK");
session.setAttribute("password",password);
response.sendRedirect("forward.jsp");
}
if(method==1){
session.invalidate();
response.sendRedirect("index.jsp");
}
%>
</body>
</html>
