<%@ page
 contentType="text/html;charset=GBK"
 import="wyf.DBBean"
 %>
<jsp:useBean id="cart" scope="session" class="wyf.Cart"/> 
<html>
   <head>
     <title>���ﳵ</title>
   </head>
   <body>
      <% 
 if(cart.isEmpty())
 {
 %>
  <font color="red" size="20">���ﳵ��û���κ���Ʒ������</Font>
 <% 
 }
 else
 { 
 %>  
 <h2>���ﳵ</h2>
     <table border="1">
    <tr>
      <th width="27%" align="center">����</td>
      <th width="27%" align="center">����</td>
      <th width="27%" align="center">����</td>    
      <th width="27%" align="center">����</td>  
      <th width="27%" align="center">��</td>
    </tr>     
 <%
    String[][] ssa=cart.getCart();
    for(int i=0;i<ssa.length;i++)
    {
 %>
    <tr>
      <th height="30%" align="center"><%= ssa[i][0] %></td>
      <th height="30%" align="center"><%= ssa[i][1] %></td>
      <th height="30%" align="center"><%= ssa[i][2] %></td>    
      <th>      
       <form action="Buy.jsp" method="post">
         <input type="text" name="count" value="<%= ssa[i][3] %>">
         <input type="hidden" name="sid" value="<%= ssa[i][0] %>">  
         <input type="hidden" name="action" value="gc">        
       </form>      
      </td>  
      <th><a href="Buy.jsp?sid=<%= ssa[i][0] %>&action=del">ɾ��</a></td>
    </tr>        
 <%
    }
 %>    
     </table>
     <br>
     <br>
     �������ܼ�Ϊ��<%= Math.round(cart.getTotal()*100)/100.0%>
 <%
 }
 %>
      </td>
      <br>
   <hr/>
   <a target="_BLANK" href="frame.jsp">��������</a>

   </body>
</html>