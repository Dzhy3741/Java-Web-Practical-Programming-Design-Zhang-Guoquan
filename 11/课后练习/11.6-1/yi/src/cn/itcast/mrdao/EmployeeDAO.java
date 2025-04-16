package cn.itcast.mrdao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import cn.itcast.mrpojo.Depart;
import cn.itcast.mrpojo.Employee;
public class EmployeeDAO {
	
    public Boolean SaveEmpl(){
    	Boolean flag=true;
		Session session = null;						
		try {
			Employee em=new Employee();
			Depart depart=new Depart();
			em.setEname("张三");
			em.setAge("12");
			em.setSex("男");
			depart.setDname("JavaWeb 部门");
			em.setDepart(depart);
			session = HibernateUtil.getSession();	
			session.beginTransaction();
			session.save(em);
			session.getTransaction().commit();			
		} catch (Exception e) { 
			e.printStackTrace();
			session.getTransaction().rollback();
			flag=false;
		}finally{
			HibernateUtil.closeSession(session);		
		}	
		return flag;
	}
    public static void main(String args[]){
    	EmployeeDAO ed=new EmployeeDAO();
    	if(ed.SaveEmpl()){
	    	  Depart depart2=ed.QueryDept(1);
	          System.out.println("----------显示保存后数据----------\n");
	    	  System.out.print("部门编号： "+depart2.getId()+"\t");
	          System.out.println("部门名称： "+depart2.getDname()+"\n");
	          Employee em2=ed.QueryEmpl(1);
	          System.out.print("员工编号： "+em2.getId()+"\t");
	          System.out.print("员工姓名： "+em2.getEname()+"\t");
	          System.out.print("员工性别： "+em2.getSex()+"\t");
	          System.out.print("员工年龄： "+em2.getAge()+"\t");
	          System.out.println("所在部门名称： "+em2.getDepart().getDname()+"\n");
	          System.out.println("----------显示更新后数据----------\n");
         if(ed.UpdateEmpl(1)){ 
        	 Depart depart3=ed.QueryDept(1);
        	 System.out.print("部门编号： "+depart3.getId()+"\t");
             System.out.println("部门名称： "+depart3.getDname()+"\n");
             Employee em3=ed.QueryEmpl(1);
             System.out.print("员工编号： "+em3.getId()+"\t");
             System.out.print("员工姓名： "+em3.getEname()+"\t");
             System.out.print("员工性别： "+em3.getSex()+"\t");
             System.out.print("员工年龄： "+em3.getAge()+"\t");
             System.out.println("所在部门名称： "+em3.getDepart().getDname());
          } 
    	}
    }
    public Depart QueryDept(int did){
		Session session = null;						
		Depart depart=null;
		try {
			session = HibernateUtil.getSession();	
			session.beginTransaction();
		    depart=(Depart) session.get(Depart.class, new Integer(did));
			session.getTransaction().commit();			
		} catch (Exception e) { 
			e.printStackTrace();
			session.getTransaction().rollback();		 	
		}finally{
			HibernateUtil.closeSession(session);		
		}	
		return depart;
	}
    public Boolean UpdateEmpl(int did){
    	Boolean flag=true;
    	EmployeeDAO ed=new EmployeeDAO();
		Session session = null;						
		Depart depart=null; 
		try {
			session = HibernateUtil.getSession();	
			session.beginTransaction();     
			Employee em2=(Employee) session.get(Employee.class, new Integer(did));
			Depart de=em2.getDepart();
			de.setDname("C 部门");
			session.update(em2);
		    session.getTransaction().commit();			
		} catch (Exception e) { 
			flag=false;
			e.printStackTrace();
			session.getTransaction().rollback();		 	
		}finally{
			HibernateUtil.closeSession(session);		
		}	
		return flag;
	}
    public Employee QueryEmpl(int did){
		Session session = null;						
		Employee em=null;
		try {
			session = HibernateUtil.getSession();	
			session.beginTransaction();
		    em=(Employee) session.get(Employee.class, new Integer(did));
			session.getTransaction().commit();			
		} catch (Exception e) { 
			e.printStackTrace();
			session.getTransaction().rollback();			
		}finally{
			HibernateUtil.closeSession(session);		
		}	
		return em;	
	}
    
   
	
	
}
