package com.owsys.bean;

public class Customer {
	public String cusname;
	public String cusunityname;
	public String custel;
	public String username;
	public String getCusname() {
		return cusname;
	}
	public void setCusname(String cusname) {
		this.cusname = cusname;
	}
	public String getCusunityname() {
		return cusunityname;
	}
	public void setCusunityname(String cusunityname) {
		this.cusunityname = cusunityname;
	}
	public String getCustel() {
		return custel;
	}
	public void setCustel(String custel) {
		this.custel = custel;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "Customer [cusname=" + cusname + ", cusunityname=" + cusunityname + ", custel=" + custel + ", username="
				+ username + "]";
	}
	public Customer(String cusname, String cusunityname, String custel, String username) {
		super();
		this.cusname = cusname;
		this.cusunityname = cusunityname;
		this.custel = custel;
		this.username = username;
	}
	
}
