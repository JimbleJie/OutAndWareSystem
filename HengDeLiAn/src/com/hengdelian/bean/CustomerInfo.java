package com.hengdelian.bean;

public class CustomerInfo {
	private int cusid;
	private String cusname;
	private String cusunityname;
	private String custel;
	public int getCusid() {
		return cusid;
	}
	public void setCusid(int cusid) {
		this.cusid = cusid;
	}
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
	@Override
	public String toString() {
		return "CustomerAdd [cusid=" + cusid + ", cusname=" + cusname + ", cusunityname=" + cusunityname + ", custel="
				+ custel + "]";
	}
	public CustomerInfo(int cusid, String cusname, String cusunityname, String custel) {
		super();
		this.cusid = cusid;
		this.cusname = cusname;
		this.cusunityname = cusunityname;
		this.custel = custel;
	}
	public CustomerInfo() {
		// TODO Auto-generated constructor stub
	}
}
