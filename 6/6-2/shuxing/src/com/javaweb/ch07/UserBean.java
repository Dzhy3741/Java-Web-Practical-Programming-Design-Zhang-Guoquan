package com.javaweb.ch07;
//一个简单的JavaBean示例
public class UserBean {
	// 用户名属性
	private String username;
	// 用户密码属性
	private String password;
	//获得用户名
	public String getUsername() {
		return username;
	}
	//设置用户名
	public void setUsername(String username) {
		this.username = username;
	}
	//获得用户密码
	public String getPassword() {
		return password;
	}
	//设置用户密码
	public void setPassword(String password) {
		this.password = password;
	}
}
