

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> request处理 </title>
</head>
<body>
<%
//取出请求参数
String bal = request.getParameter("balance");
double qian = Double.parseDouble(bal);
//取出request范围内的info属性
List<String> info  = (List<String>)request.getAttribute("info");
for (String tmp : info)
{
	out.println(tmp + "<br/>");
}
out.println("取钱" + qian + "块");
out.println("减少" + qian);
%>
</body>
</html>