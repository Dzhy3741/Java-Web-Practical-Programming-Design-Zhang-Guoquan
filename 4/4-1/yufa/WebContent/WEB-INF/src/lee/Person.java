package lee;

public class Person
{
	private String name;
	private int age;
	
	//无参数的构造器
	public Person()
	{
	}
	//初始化全部属性的构造器
	public Person(String name , int age)
	{
		this.name = name;
		this.age = age;
	}
	
	//name属性的setter和getter方法
	public void setName(String name)
	{
		this.name = name;
	}
	public String getName()
	{
		return this.name;
	}
	
	//age属性的setter和getter方法
	public void setAge(int age)
	{
		this.age = age;
	}
	public int getAge()
	{
		return this.age;
	}
}