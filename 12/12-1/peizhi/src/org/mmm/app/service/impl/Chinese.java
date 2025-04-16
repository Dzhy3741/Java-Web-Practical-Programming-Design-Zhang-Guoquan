package org.mmm.app.service.impl;

import org.mmm.app.config.*;
import org.mmm.app.service.*;
public class Chinese
	implements Person
{
	private Axe axe;
	private String name;
	//设值注入所需的setter方法
	public void setAxe(Axe axe)
	{
		this.axe = axe;
	}
	//设值注入所需的setter方法
	public void setName(String name)
	{
		this.name = name;
	}
	//实现Person接口的useAxe方法
	public void useAxe()
	{
		//调用axe的chop()方法，
		//表明Person对象依赖于axe对象
		System.out.println("我是："	+ name
			+ axe.chop());
	}
}