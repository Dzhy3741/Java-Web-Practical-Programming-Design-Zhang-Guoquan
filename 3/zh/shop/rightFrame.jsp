<%@ page
 contentType="text/html;charset=GBK"
 import="wyf.DBBean"
 %>

<html>
  <head>
     <title></title>
  </head>
  <body>
    <table border="1">
   <tr>
    <th width="30%" align="center">����</td>
    <th width="30%" align="center">����</td>
    <th width="30%" align="center">����</td>    
    <th width="30%" align="center">��</td>  
  </tr>   
 <% 
		String cp=request.getParameter("cp");//cpΪ��ҳ��
		int currpage=(cp==null||cp=="")?1:Integer.parseInt(cp);
		
		String[][] ss=DBBean.getGoodList(currpage);
		for(int i=0;i<ss.length;i++)
		{
%>
  <tr>
    <td height="30%" align="center"><%= ss[i][0] %></td>
    <td height="30%" align="center"><%= ss[i][1] %></td>
    <td height="30%" align="center"><%= ss[i][2] %></td>
    <td height="30%" align="center"><a href="Buy.jsp?sid=<%= ss[i][0] %>&action=buy">����</a></td>
  </tr>
<%			
		}
 
 
 %>       
    </table>
    
 <% 
   int tp=DBBean.getTotalPage();
   
   if(currpage!=1)
   {
   
  %>
  
  <a href="rightFrame.jsp?cp=<%=currpage-1%>"><<��һҳ</a> &nbsp;&nbsp;
  
  <%
   
   }
   
   if(currpage!=tp)
   {   
%>
  <a href="rightFrame.jsp?cp=<%=currpage+1%>">��һҳ>></a>
<%      
   } 
  %>   
    
   <form action="rightFrame.jsp" name="myform">
     <select name="cp" onchange="document.myform.submit()">
<% 
    for(int i=1;i<=tp;i++)
    {
%>
    <option value="<%=i%>" <%= (i==currpage)?"selected":"" %>>��<%=i%>ҳ</option>
<%    
    }
 %>
     </select>
   </form>
    
    <hr/>
    <a target="_BLANK" href="Cart.jsp">�鿴���ﳵ</a>
    <a target="_BLANK" href="reg.jsp">�û�ע��</a>
  </body>
</html>
