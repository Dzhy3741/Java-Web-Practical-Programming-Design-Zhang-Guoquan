<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
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
    <style type="text/css">
<!--
.STYLE1 { 
	font-size: 18px;
	font-weight: bold;
}
-->
    </style>
</head>
  <body> 
  <div align="center">
    <p class="STYLE1">&nbsp;</p>
    <p class="STYLE1">ѧ���ɼ�ͳ��</p>
    <table width="392" border="1">
      <tr bgcolor="#FFCCFF">
        <td width="54"><div align="center">���</div></td>
        <td width="58"><div align="center">����</div></td>
        <td width="52"><div align="center">�Ա�</div></td>
        <td width="44"><div align="center">����</div></td>
        <td width="91"><div align="center">�༶</div></td>
        <td width="53"><div align="center">�ɼ�</div></td>
      </tr>
    </table> 
    <table width="392" border="1">
      <s:iterator value="list">
        <tr>
          <td width="54"><div align="center"><s:property value="id"/></div></td>
          <td width="58"><div align="center"><s:property value="name"/></div></td>
          <td width="52"><div align="center"><s:property value="sex"/></div></td>
          <td width="44"><div align="center"><s:property value="age"/></div></td>
          <td width="91"><div align="center"><s:property value="classname"/></div></td>
          <td width="53"><div align="center"><s:property value="grade"/>��</div></td>
        </tr>
      </s:iterator>
      <tr>
        <td colspan="5"><strong> &nbsp;�ϼ�:</strong></td>
        <td><div align="center"><s:property value="sum"/>��</div></td>
      </tr>
    </table>
  </div>
  </body>
</html>
