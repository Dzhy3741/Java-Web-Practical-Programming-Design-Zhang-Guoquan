package cn.mrcast.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.mrcast.bean.Student;
import cn.mrcast.util.DBUtil;

public class ShowAllDAO {
   public List<Student> ShowAll()
   {
	   List<Student> list=new ArrayList<Student>();
	   Connection con=DBUtil.con;
	 try{
		String sql="select id,name,sex,age,grade,classname from tb_student";
		PreparedStatement ps=con.prepareStatement(sql);
	    ResultSet rs=ps.executeQuery();
	    while(rs.next())
	    {		  
	    	Student st=new Student();
	    	st.setId(rs.getInt("id"));
	    	st.setName(rs.getString("name"));
	    	st.setSex(rs.getString("sex"));
	    	st.setAge(rs.getString("age"));
	    	st.setGrade(rs.getInt("grade"));
	    	st.setClassname(rs.getString("classname"));
	    	list.add(st);
	    }
	   } catch (SQLException e) {System.out.println(e.getMessage());
	  }
	   return list;
  }
   public int ShowSum()
   {
	   Connection con=DBUtil.con;
	   int sum=0;
   try{
		String sql="select sum(grade) sum from tb_student";
		PreparedStatement ps=con.prepareStatement(sql);
	    ResultSet rs=ps.executeQuery();
	    if(rs.next())
	    {
	     sum=rs.getInt("sum");
	    }
	   } catch (SQLException e) {System.out.println(e.getMessage());} 
	   return sum;
	} 
}
