<%@ 
   page contentType="text/html;charset=gb2312"
%>
<html>
     <head>
          <title>显示信息</title>
     </head>
     <body>
          <h2>以下是相关的信息</h2>
          <% 
           String a=(String)session.getAttribute("name");
           String b=(String)session.getAttribute("number");
           String c=(String)session.getAttribute("stclass");
           out.println("姓名:"+a+"<br>");
           out.println("学号:"+b+"<br>");
           out.println("班级:"+c+"<br>");
           %>
     </body>
</html>