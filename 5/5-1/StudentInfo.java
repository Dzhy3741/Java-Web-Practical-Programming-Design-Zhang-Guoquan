package cf.re.wyf;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
public class StudentInfo extends HttpServlet
{
	public void doGet(HttpServletRequest request,
	                  HttpServletResponse response)
	                  throws ServletException,IOException
	   {
	   	  request.setCharacterEncoding("gb2312");
	   	response.setContentType("text/html;charset=gb2312");
		PrintWriter out=response.getWriter();
	      
	      String sname=request.getParameter("sname");
	      String snumber=request.getParameter("snumber");
	      String sclass =request.getParameter("sclass");
	      
	      HttpSession session=request.getSession();
	      session.setAttribute("name",sname);
	      session.setAttribute("number",snumber);
	      session.setAttribute("stclass",sclass);
	      
	      out.println("<html>");
	      out.println("<head>");
	      out.println("<title>会话相关</title>");
	      out.println("</head>");
	      out.println("<body>");
	      out.println("这是一个有关会话相关的页面");
	      out.println("</body>");
	      out.println("</html>");         	
	   }
	   public void doPost(HttpServletRequest request,
	                          HttpServletResponse response)
	                      throws ServletException,IOException
	   {
	      this.doGet(request,response); 	
	   }               
}