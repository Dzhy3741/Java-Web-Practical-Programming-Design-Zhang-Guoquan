package cn.mrcast.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import cn.mrcast.bean.Student;
import cn.mrcast.dao.ShowAllDAO;

public class ShowAllAction extends ActionSupport{
  
	   List<Student> list=new ArrayList<Student>();
	   ShowAllDAO sd=new ShowAllDAO();
	   int sum=0;
	   public int getSum() {
		return sum;
	   }
	   public List<Student> getList() {
		return list;
	   }
	   public String execute()
	   {
		   list=sd.ShowAll();   
		   sum=sd.ShowSum();
		   return "success";
	   } 
} 
