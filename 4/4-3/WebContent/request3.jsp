
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> ��ȡ����ŷ�ַ���GET������� </title>
</head>
<body>
<%
//��ȡ����������Ĳ�ѯ�ַ���
String rawQueryStr = request.getQueryString();
out.println("ԭʼ��ѯ�ַ���Ϊ��" + rawQueryStr + "<hr/>");
//ʹ��URLDecoder�����ַ���
String queryStr = java.net.URLDecoder.decode(
	rawQueryStr , "gbk");
out.println("�����Ĳ�ѯ�ַ���Ϊ��" + queryStr + "<hr/>");
//��&���ŷֽ��ѯ�ַ���
String[] paramPairs = queryStr.split("&");
for(String paramPair : paramPairs)
{
	out.println("ÿ�������������ֵ��Ϊ��" + paramPair + "<br/>");
	//��=���ֽ������������ֵ
	String[] nameValue = paramPair.split("=");
	out.println(nameValue[0] + "������ֵ�ǣ�" + 
		nameValue[1]+ "<hr/>");
}
%>
</body>
</html>