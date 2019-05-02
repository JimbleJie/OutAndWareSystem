package com.hengdelian.bean;

public class SupplierInfo {
	private int supid;
	private String supname;
	private String supunityname;
	private String suptel;
	public int getSupid() {
		return supid;
	}
	public void setSupid(int supid) {
		this.supid = supid;
	}
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
	@Override
	public String toString() {
		return "SupplierInfo [supid=" + supid + ", supname=" + supname + ", supunityname=" + supunityname + ", suptel="
				+ suptel + "]";
	}
	public SupplierInfo(int supid, String supname, String supunityname, String suptel) {
		super();
		this.supid = supid;
		this.supname = supname;
		this.supunityname = supunityname;
		this.suptel = suptel;
	}
	public SupplierInfo() {
		// TODO Auto-generated constructor stub
	}
	
}
