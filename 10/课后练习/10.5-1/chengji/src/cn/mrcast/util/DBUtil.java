package cn.mrcast.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
  public static Connection  con;
  static{
     try{Class.forName("com.mysql.jdbc.Driver");}catch(Exception e){e.printStackTrace();}
     try{
         String user="root";
         String password="111";
    	 String url="jdbc:mysql://localhost/db_database14";
         con=DriverManager.getConnection(url, user, password);   
        }catch(Exception e){e.printStackTrace();}
        
  }
}