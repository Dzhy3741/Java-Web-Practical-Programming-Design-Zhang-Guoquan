<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>session对象的应用</title>
</head>
<script language="javascript" type="">
function Mycheck(){
if (form.account.value=="")
{ alert("请输入用户名！");form.account.focus();return  false;}
if (form.password.value=="")
{ alert("请输入用户登录密码！");form.password.focus();return false;}
form.submit();
}
</script>
<body>
<table width="334" height="171" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
	<br>
	<form name="form" method="post" action="dealwith.jsp?method=0" onSubmit="return Mycheck()">
	
	<table width="250" border="0" align="center">
      <tr>
        <td width="62" height="20">用户名:</td>
        <td width="172">
          <input name="account" type="text" id="account">
       </td>
      </tr>
      <tr>
        <td height="20">密&nbsp;&nbsp;码：</td>
        <td><input name="password" type="password" id="password"></td>
      </tr>
      <tr>
        <td height="20" colspan="2"><div align="center">
  <input type="submit" name="Submit" value="登录">
&nbsp;&nbsp;
            <input type="reset" name="Submit2" value="重置">
        </div></td>
        </tr>
    </table>
	 </form>
	
	</td>
  </tr>
</table>
</body>
</html>
