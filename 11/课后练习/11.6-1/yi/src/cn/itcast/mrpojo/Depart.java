package cn.itcast.mrpojo;

public class Depart {
	private int id;
    private String dname;
    private Employee em;
    public Employee getEm() {
		return em;
	}
	public void setEm(Employee em) {
		this.em = em;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
}
