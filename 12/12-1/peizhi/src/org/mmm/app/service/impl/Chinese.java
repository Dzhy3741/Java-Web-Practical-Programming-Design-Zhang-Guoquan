package org.mmm.app.service.impl;

import org.mmm.app.config.*;
import org.mmm.app.service.*;
public class Chinese
	implements Person
{
	private Axe axe;
	private String name;
	//��ֵע�������setter����
	public void setAxe(Axe axe)
	{
		this.axe = axe;
	}
	//��ֵע�������setter����
	public void setName(String name)
	{
		this.name = name;
	}
	//ʵ��Person�ӿڵ�useAxe����
	public void useAxe()
	{
		//����axe��chop()������
		//����Person����������axe����
		System.out.println("���ǣ�"	+ name
			+ axe.chop());
	}
}