package com.owsys.bean;

public class Supplier {
	public String supname;
	public String supunityname;
	public String suptel;
	public String username;
	public String getSupname() {
		return supname;
	}
	public void setSupname(String supname) {
		this.supname = supname;
	}
	public String getSupunityname() {
		return supunityname;
	}
	public void setSupunityname(String supunityname) {
		this.supunityname = supunityname;
	}
	public String getSuptel() {
		return suptel;
	}
	public void setSuptel(String suptel) {
		this.suptel = suptel;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "Supplier [supname=" + supname + ", supunityname=" + supunityname + ", suptel=" + suptel + ", username="
				+ username + "]";
	}
	public Supplier(String supname, String supunityname, String suptel, String username) {
		super();
		this.supname = supname;
		this.supunityname = supunityname;
		this.suptel = suptel;
		this.username = username;
	}
	
}
