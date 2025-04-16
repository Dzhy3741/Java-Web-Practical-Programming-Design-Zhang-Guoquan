package org.mmm.app.config;

import org.mmm.app.service.*;
import org.mmm.app.service.impl.*;
import org.springframework.context.annotation.*;
import org.springframework.beans.factory.annotation.*;


@Configuration
public class AppConfig 
{
	//������Ҫ����ע�������ֵ
	@Value("�����") String personName; 
	//����һ��Bean��chinese
	@Bean(name="chinese") 
	public Person person() 
	{ 
		Chinese p = new Chinese();
		p.setAxe(stoneAxe());
		p.setName(personName);
		return p;
	}
	//����Bean��stoneAxe
	@Bean(name="stoneAxe")
	public Axe stoneAxe()
	{ 
		return new StoneAxe();
	}
	//����Bean��steelAxe
	@Bean(name="steelAxe")
	public Axe steelAxe()
	{ 
		return new SteelAxe();
	}
} 

