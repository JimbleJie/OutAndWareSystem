package com.hengdelian.bean;

public class WarehousInfo {
	private int wid;
	private String wdate;
	private String wtype;
	private String wspec;
	private int wnum;
	private double wsweight;
	private double waweight;
	private double wsprice;
	private double waprice;
	private String wsupname;
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
	@Override
	public String toString() {
		return "WarehousInfo [wid=" + wid + ", wdate=" + wdate + ", wtype=" + wtype + ", wspec=" + wspec + ", wnum="
				+ wnum + ", wsweight=" + wsweight + ", waweight=" + waweight + ", wsprice=" + wsprice + ", waprice="
				+ waprice + ", wsupname=" + wsupname + "]";
	}
	public WarehousInfo(int wid, String wdate, String wtype, String wspec, int wnum, double wsweight, double waweight,
			double wsprice, double waprice, String wsupname) {
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
	}
	public WarehousInfo() {
		// TODO Auto-generated constructor stub
	}
}
