package nnn;

import org.mmm.app.config.*;
import org.mmm.app.service.*;
import org.springframework.context.*;
import org.springframework.context.support.*;
import org.springframework.context.annotation.*;

public class Test
{
	public static void main(String[] args)throws Exception
	{
		//����Spring����
		ApplicationContext ctx = new 
			AnnotationConfigApplicationContext(AppConfig.class);
//		ApplicationContext ctx = new 
//			ClassPathXmlApplicationContext("bean.xml");
		//��ȡchinese ʵ��
		Person p = ctx.getBean("chinese" , Person.class);
		//����useAxe()����
		p.useAxe();
	}
}