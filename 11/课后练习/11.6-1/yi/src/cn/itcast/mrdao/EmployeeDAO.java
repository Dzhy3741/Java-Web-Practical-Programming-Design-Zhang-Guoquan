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
			em.setEname("����");
			em.setAge("12");
			em.setSex("��");
			depart.setDname("JavaWeb ����");
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
	          System.out.println("----------��ʾ���������----------\n");
	    	  System.out.print("���ű�ţ� "+depart2.getId()+"\t");
	          System.out.println("�������ƣ� "+depart2.getDname()+"\n");
	          Employee em2=ed.QueryEmpl(1);
	          System.out.print("Ա����ţ� "+em2.getId()+"\t");
	          System.out.print("Ա�������� "+em2.getEname()+"\t");
	          System.out.print("Ա���Ա� "+em2.getSex()+"\t");
	          System.out.print("Ա�����䣺 "+em2.getAge()+"\t");
	          System.out.println("���ڲ������ƣ� "+em2.getDepart().getDname()+"\n");
	          System.out.println("----------��ʾ���º�����----------\n");
         if(ed.UpdateEmpl(1)){ 
        	 Depart depart3=ed.QueryDept(1);
        	 System.out.print("���ű�ţ� "+depart3.getId()+"\t");
             System.out.println("�������ƣ� "+depart3.getDname()+"\n");
             Employee em3=ed.QueryEmpl(1);
             System.out.print("Ա����ţ� "+em3.getId()+"\t");
             System.out.print("Ա�������� "+em3.getEname()+"\t");
             System.out.print("Ա���Ա� "+em3.getSex()+"\t");
             System.out.print("Ա�����䣺 "+em3.getAge()+"\t");
             System.out.println("���ڲ������ƣ� "+em3.getDepart().getDname());
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
			de.setDname("C ����");
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
