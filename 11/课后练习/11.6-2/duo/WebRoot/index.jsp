<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ page import="mrmwq.hibernate.Sort" %>
<jsp:useBean id="h" class="mrmwq.HibernateUtil" scope="request"/>
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
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style type="text/css">
<!--
.STYLE1 {font-size: 18px}
.STYLE5 {
	font-size: 24px;
	font-weight: bold;
}
-->
    </style>
</head>
 <body topmargin="0">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="12%"></td>
    <td width="76%"></td>
    <td width="12%"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><table width="100%"  border="0" cellspacing="0" cellpadding="0" >
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center" class="STYLE1"><span class="STYLE5">自关联查询</span></div></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr align="center">
        <td><table width="35%"  border="1" cellspacing="0" cellpadding="4">
          <tr align="center" bgcolor="#FFCCFF">
            <td>序号</td>
            <td>商品类别</td>
            <td>所属类别</td>
          </tr>
          <%
          List l=h.query("from Sort");
          for(int i=0;i<l.size();i++){
            Sort s=(Sort)l.get(i);
          %>
          <tr align="center">
            <td><%=i %></td>
            <td><%=s.getName() %></td>
            <%
            String fatherSort="无";
            if(s.getFatherSort()!=null){
              fatherSort=s.getFatherSort().getName();
            }
            %>
            <td><%=fatherSort %></td>
          </tr>
          <%
          } 
          %>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
