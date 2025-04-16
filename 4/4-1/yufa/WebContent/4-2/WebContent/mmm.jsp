

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
//获取请求的钱数
String bal = request.getParameter("balance");
//将钱数的字符串转换成双精度浮点数
double qian = Double.parseDouble(bal);	
//对取出的钱进行判断
if (qian < 500)
{
	out.println("取款" + qian + "块");
	out.println("账户减少" + qian);
}
else
{
	//创建了一个List对象
	List<String> info = new ArrayList<String>();
	info.add("1111111");
	info.add("2222222");
	info.add("3333333");
	//将info对象放入request范围内
	request.setAttribute("info" , info);
%>
<!-- 实现转发 -->
<jsp:forward page="nnn.jsp"/>
<%}%>
</body>
</html>