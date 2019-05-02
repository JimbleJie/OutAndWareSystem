package com.hengdelian.bean;

public class Cost {
	private int cid;
	private String cdate;
	private String ctype;
	private double cprice;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCdate() {
		return ctype;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public double getCprice() {
		return cprice;
	}
	public void setCprice(double cprice) {
		this.cprice = cprice;
	}
	
	@Override
	public String toString() {
		return "Cost [cid=" + cid + ", cdate=" + cdate + ", ctype=" + ctype + ", cprice=" + cprice + "]";
	}
	
	public Cost(int cid, String cdate, String ctype, double cprice) {
		super();
		this.cid = cid;
		this.cdate = cdate;
		this.ctype = ctype;
		this.cprice = cprice;
	}
	public Cost() {
		// TODO Auto-generated constructor stub
	}
}
