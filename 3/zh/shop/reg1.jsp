<%@
   page contentType="text/html; charset=gb2312" import="java.sql.*"
 %>
 <html>
      <head>
           <title></title>
      </head>
      <body>
      <h2>ע��</h2>
      <br>
          <form  name="info" action="reg2.jsp" method="post">
           �û���:<input type="text" name="name" value=""><br>
           ����:<input type="password" name="password" value=""><br>
           ȷ������:<input type="Password" name="password1" value=""><br>
           ��ʵ����:<input type="text" name="relname" value=""><br>
           �绰:<input type="text" name="telephe" value=""><br>
           E-mail:<input type="text" name="mail" value=""><br>
           סַ:<input type="text" name="adder" value=""><br>
           <input  type="button" name=next value="��һ��" onclick="Checkform()">
          
           </form>
           
           <script language=javascript>
           function Checkform()
           {
             flag=1;
             
             if(document.info.password.value!=document.info.password1.value)
             {
                alert("�������벻ͬ,");
                document.info.password.value="";
                document.info.password1.value="";
                flag=0;
             }
                          
             if (document.info.name.value=="")
             {
             alert("�������û���");
             document.info.name.focus();
             flag=0;
             return false;
             }
             if(document.info.password.value=="")
             {
              alert("����������");
              document.info.password.focus();
              flag=0;
              return false;
             }
             if(document.info.password1.value=="")
             {
               alert("������ȷ������");
               document.info.password1.focus();
               flag=0;
               return false;
             }
             if(document.info.telephe.value=="")
             {
               alert("������绰����");
               document.info.telephe.focus();
               return false;
               flag=0;
             }
             if(document.info.mail.value=="")
             {
                alert("������E-mail");
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