<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   <head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	</head> 
  <body> 
    <form action="login.action" method="post" name="form1">
    <table width="319" border="1" align="center">
    <caption>
    <h3><br>
      <br>
    用户登录</h3>
    </caption>
        <tr align="center">
            <td width="105" height="26" bgcolor="#FFCCFF"><div align="center">用户名：</div></td>
            <td width="198" bgcolor="#FFCCFF"><label>
              <div align="left">
                <input type="text" name="username">
              </div>
            </label></td>
        </tr>
        <tr>
          <td height="26" bgcolor="#FFCCFF"><div align="center">密&nbsp;&nbsp;码：</div></td>
          <td height="26" bgcolor="#FFCCFF"><label>
            <input type="password" name="password">
          </label></td>
        </tr>
        <tr align="center">
            <td colspan="2" bgcolor="#FFCCFF"><input type="submit" value="登录" />
              &nbsp;&nbsp;&nbsp;
              <input type="reset" value="重置"/></td>
        </tr>
    </table>
</form>
  </body>
</html>
