<%@
   page contentType="text/html; charset=gb2312" import="java.sql.*"
 %>
 <html>
      <head>
          <title></title>
      </head>
      
      <body> 
        <textarea name="textfield" cols="60" rows="20">    
    这是一个网上书店系统.
    </textarea>
        
           <table>
               <tr>
                 <td>
                   <form action="reg1.jsp" method="post">
                      <input type="button" name="同意" value="同意" onclick="submit()">
                   </form> 
                 </td>
                 <td>
		           <form action="frame.jsp" method="post">
		               <input type="button" name="不同意" value="不同意" onclick="submit()">
		           </form>  
                 </td>
               </tr>
           
           </table>  
      </body>
 </html>
 
 
 
 