<%@
   page contentType="text/html; charset=gb2312" import="java.sql.*" language="java"
 %>

 <html>
      <head>
      <meta http-equiv="Content-Type" content="text/html;charset=gb2312">
           <title></title>
      </head>
      <body>
            <% 
            String name=(String)request.getParameter("name");
            String password=(String)request.getParameter("number");
             Connection dbcon=null;
			try
            {
	           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	           dbcon=DriverManager.getConnection("jdbc:odbc:driver={Microsoft Access Driver (*.mdb)};DBQ=E:/ceshi/1/shop/shop.mdb");
;

	           PreparedStatement stat=dbcon.prepareStatement(
	                     "select * from useInfo where name=? and number=?");
	           stat.setString(1,name);
	           stat.setString(2,password);
	           
	           ResultSet result=stat.executeQuery();
	           
	           if(result.next())
	           {
		           session.setAttribute("name",name);
		           response.sendRedirect("usingpage.jsp");
	           }
	           else
	           {
	              response.sendRedirect("error1.jsp");
	           }

            }
            catch(Exception e)
            {
              e.printStackTrace();
            }

            %> 
            
             
      </body>
 </html>