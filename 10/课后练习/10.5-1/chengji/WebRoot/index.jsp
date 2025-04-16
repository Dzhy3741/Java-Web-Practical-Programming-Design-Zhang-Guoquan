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
    <p class="STYLE1">学生成绩统计</p>
    <table width="392" border="1">
      <tr bgcolor="#FFCCFF">
        <td width="54"><div align="center">编号</div></td>
        <td width="58"><div align="center">姓名</div></td>
        <td width="52"><div align="center">性别</div></td>
        <td width="44"><div align="center">年龄</div></td>
        <td width="91"><div align="center">班级</div></td>
        <td width="53"><div align="center">成绩</div></td>
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
          <td width="53"><div align="center"><s:property value="grade"/>分</div></td>
        </tr>
      </s:iterator>
      <tr>
        <td colspan="5"><strong> &nbsp;合计:</strong></td>
        <td><div align="center"><s:property value="sum"/>分</div></td>
      </tr>
    </table>
  </div>
  </body>
</html>
