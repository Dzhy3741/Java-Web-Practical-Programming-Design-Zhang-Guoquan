<%@
  page contentType="text/html;charset=gb2312"
 %>
 <html>
      <head>
      <meta http-equiv="Content-Type" content="text/html;charset=gb2312">
           <title></title>
           <script language="javascript">

   function login()
   {
       document.myform.operator.value="login";
       document.myform.submit();
   
   }   
</script> 	  	
      </head>
      <body>
      <h2>��¼����</h2>
      <br>
          <form action="show.jsp" name="myform" method="post"> 	  	   
 	  	   	�û���:<input type="text" name="name" size="10"><br>
 	  	   	��  ��:<input type="password" name="number" size="10"><br>
 	  	   	<br>
 	  
 	  	   	
 	  	   	<input type="hidden" name="operator" value="">
 	  	   		 <a onclick="login()"><img src="login.gif"></a>		
      </body>
 </html> 