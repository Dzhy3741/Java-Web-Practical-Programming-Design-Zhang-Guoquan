<%@ 
   page contentType="text/html;charset=gb2312"
%>
<html>
     <head>
          <title>��ʾ��Ϣ</title>
     </head>
     <body>
          <h2>��������ص���Ϣ</h2>
          <% 
           String a=(String)session.getAttribute("name");
           String b=(String)session.getAttribute("number");
           String c=(String)session.getAttribute("stclass");
           out.println("����:"+a+"<br>");
           out.println("ѧ��:"+b+"<br>");
           out.println("�༶:"+c+"<br>");
           %>
     </body>
</html>