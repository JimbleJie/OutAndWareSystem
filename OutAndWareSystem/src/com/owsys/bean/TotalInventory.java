package com.owsys.bean;

public class TotalInventory {
	public int toid;
	public String totype;
	public String tospec;
	public int tonum;
	public String username;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public TotalInventory(int toid, String totype, String tospec, int tonum, String username) {
		super();
		this.toid = toid;
		this.totype = totype;
		this.tospec = tospec;
		this.tonum = tonum;
		this.username = username;
	}
	@Override
	public String toString() {
		return "TotalInventory [toid=" + toid + ", totype=" + totype + ", tospec=" + tospec + ", tonum=" + tonum
				+ ", username=" + username + "]";
	}
	
}
