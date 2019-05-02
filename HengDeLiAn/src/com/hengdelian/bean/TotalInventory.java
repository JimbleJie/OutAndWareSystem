package com.hengdelian.bean;

public class TotalInventory {
	private int toid;
	private String totype;
	private String tospec;
	private int tonum;
	public int getToid() {
		return toid;
	}
	public void setToid(int toid) {
		this.toid = toid;
	}
	public String getTotype() {
		return totype;
	}
	public void setTotype(String totype) {
		this.totype = totype;
	}
	public String getTospec() {
		return tospec;
	}
	public void setTospec(String tospec) {
		this.tospec = tospec;
	}
	public int getTonum() {
		return tonum;
	}
	public void setTonum(int tonum) {
		this.tonum = tonum;
	}
	@Override
	public String toString() {
		return "TotalInventory [toid=" + toid + ", totype=" + totype + ", tospec=" + tospec + ", tonum=" + tonum + "]";
	}
	public TotalInventory(int toid, String totype, String tospec, int tonum) {
		super();
		this.toid = toid;
		this.totype = totype;
		this.tospec = tospec;
		this.tonum = tonum;
	}
	public TotalInventory() {
		// TODO Auto-generated constructor stub
	}
}
