package com.hengdelian.bean;


public class Users {
	public int id;
	public String name;
	public String password;
	public String tel;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	@Override
	public String toString() {
		return "Users [id=" + id + ", name=" + name + ", password=" + password + ", tel=" + tel + "]";
	}
	public Users(int id, String name, String password, String tel) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.tel = tel;
	}
	public Users() {
		// TODO Auto-generated constructor stub
	}
	
}
