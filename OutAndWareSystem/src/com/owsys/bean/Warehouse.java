package com.owsys.bean;

public class Warehouse {
	public int wid;
	public String wdate;
	public String wtype;
	public String wspec;
	public int wnum;
	public double wsweight;
	public double waweight;
	public double wsprice;
	public double waprice;
	public String wsupname;
	public String username;
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public String getWtype() {
		return wtype;
	}
	public void setWtype(String wtype) {
		this.wtype = wtype;
	}
	public String getWspec() {
		return wspec;
	}
	public void setWspec(String wspec) {
		this.wspec = wspec;
	}
	public int getWnum() {
		return wnum;
	}
	public void setWnum(int wnum) {
		this.wnum = wnum;
	}
	public double getWsweight() {
		return wsweight;
	}
	public void setWsweight(double wsweight) {
		this.wsweight = wsweight;
	}
	public double getWaweight() {
		return waweight;
	}
	public void setWaweight(double waweight) {
		this.waweight = waweight;
	}
	public double getWsprice() {
		return wsprice;
	}
	public void setWsprice(double wsprice) {
		this.wsprice = wsprice;
	}
	public double getWaprice() {
		return waprice;
	}
	public void setWaprice(double waprice) {
		this.waprice = waprice;
	}
	public String getWsupname() {
		return wsupname;
	}
	public void setWsupname(String wsupname) {
		this.wsupname = wsupname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "Warehouse [wid=" + wid + ", wdate=" + wdate + ", wtype=" + wtype + ", wspec=" + wspec + ", wnum=" + wnum
				+ ", wsweight=" + wsweight + ", waweight=" + waweight + ", wsprice=" + wsprice + ", waprice=" + waprice
				+ ", wsupname=" + wsupname + ", username=" + username + "]";
	}
	public Warehouse(int wid, String wdate, String wtype, String wspec, int wnum, double wsweight, double waweight,
			double wsprice, double waprice, String wsupname, String username) {
		super();
		this.wid = wid;
		this.wdate = wdate;
		this.wtype = wtype;
		this.wspec = wspec;
		this.wnum = wnum;
		this.wsweight = wsweight;
		this.waweight = waweight;
		this.wsprice = wsprice;
		this.waprice = waprice;
		this.wsupname = wsupname;
		this.username = username;
	}
	
	
}
