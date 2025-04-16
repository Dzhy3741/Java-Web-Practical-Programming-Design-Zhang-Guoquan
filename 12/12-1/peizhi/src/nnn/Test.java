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
		//创建Spring容器
		ApplicationContext ctx = new 
			AnnotationConfigApplicationContext(AppConfig.class);
//		ApplicationContext ctx = new 
//			ClassPathXmlApplicationContext("bean.xml");
		//获取chinese 实例
		Person p = ctx.getBean("chinese" , Person.class);
		//调用useAxe()方法
		p.useAxe();
	}
}