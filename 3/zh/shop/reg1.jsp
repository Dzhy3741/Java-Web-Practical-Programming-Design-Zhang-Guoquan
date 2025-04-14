<%@
   page contentType="text/html; charset=gb2312" import="java.sql.*"
 %>
 <html>
      <head>
           <title></title>
      </head>
      <body>
      <h2>注册</h2>
      <br>
          <form  name="info" action="reg2.jsp" method="post">
           用户名:<input type="text" name="name" value=""><br>
           密码:<input type="password" name="password" value=""><br>
           确认密码:<input type="Password" name="password1" value=""><br>
           真实姓名:<input type="text" name="relname" value=""><br>
           电话:<input type="text" name="telephe" value=""><br>
           E-mail:<input type="text" name="mail" value=""><br>
           住址:<input type="text" name="adder" value=""><br>
           <input  type="button" name=next value="下一个" onclick="Checkform()">
          
           </form>
           
           <script language=javascript>
           function Checkform()
           {
             flag=1;
             
             if(document.info.password.value!=document.info.password1.value)
             {
                alert("两次密码不同,");
                document.info.password.value="";
                document.info.password1.value="";
                flag=0;
             }
                          
             if (document.info.name.value=="")
             {
             alert("请输入用户名");
             document.info.name.focus();
             flag=0;
             return false;
             }
             if(document.info.password.value=="")
             {
              alert("请输入密码");
              document.info.password.focus();
              flag=0;
              return false;
             }
             if(document.info.password1.value=="")
             {
               alert("请输入确认密码");
               document.info.password1.focus();
               flag=0;
               return false;
             }
             if(document.info.telephe.value=="")
             {
               alert("请输入电话号码");
               document.info.telephe.focus();
               return false;
               flag=0;
             }
             if(document.info.mail.value=="")
             {
                alert("请输入E-mail");
                document.info.mail.focus();
                flag=0;
                return false;
             }
             
             if(flag==1)
             {
                document.info.submit();
             }
             
             
           }
           
           </script>
      </body>
 </html>