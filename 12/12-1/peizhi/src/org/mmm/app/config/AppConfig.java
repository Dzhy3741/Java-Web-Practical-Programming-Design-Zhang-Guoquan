package org.mmm.app.config;

import org.mmm.app.service.*;
import org.mmm.app.service.impl.*;
import org.springframework.context.annotation.*;
import org.springframework.beans.factory.annotation.*;


@Configuration
public class AppConfig 
{
	//定义需要依赖注入的属性值
	@Value("孙悟空") String personName; 
	//配置一个Bean：chinese
	@Bean(name="chinese") 
	public Person person() 
	{ 
		Chinese p = new Chinese();
		p.setAxe(stoneAxe());
		p.setName(personName);
		return p;
	}
	//配置Bean：stoneAxe
	@Bean(name="stoneAxe")
	public Axe stoneAxe()
	{ 
		return new StoneAxe();
	}
	//配置Bean：steelAxe
	@Bean(name="steelAxe")
	public Axe steelAxe()
	{ 
		return new SteelAxe();
	}
} 

