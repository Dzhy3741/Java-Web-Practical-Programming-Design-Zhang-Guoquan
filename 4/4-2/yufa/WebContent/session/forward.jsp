<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>session�����Ӧ��</title>
</head>
<body>
<table width="334" height="171" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>	
		<br>
	<table width="250" border="0" align="center">
      <tr>
        <td width="62" height="20">�û���:</td>
        <td width="172"><%=session.getAttribute("account")%></td>
      </tr>
      <tr>
        <td height="20">��&nbsp;&nbsp;�룺</td>
        <td><%=session.getAttribute("password")%></td>
      </tr>
    </table>	
	</td>
  </tr>
</table>
<table width="328" height="42" border="0" align="center">
  <tr>
    <td><div align="center"><a href="dealwith.jsp?method=1">��ȫ�˳�</a></div></td>
  </tr>
</table>
</body>
</html>
