
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> forward的原始页 </title>
	<meta name="website" content="http://www.sohu.org" />
</head>
<body>
<h3>原始页</h3>
<jsp:forward page="forward-jieguo.jsp">
	<jsp:param name="age" value="30"/>
</jsp:forward>
</body>
</html>