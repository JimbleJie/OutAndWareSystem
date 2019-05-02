package com.hengdelian.bean;

public class CostModel {
	private int cmid; //id
	private String cmtype; //种类
	public int getCmid() {
		return cmid;
	}
	public void setCmid(int cmid) {
		this.cmid = cmid;
	}
	public String getCmtype() {
		return cmtype;
	}
	public void setCmtype(String cmtype) {
		this.cmtype = cmtype;
	}
	public CostModel(int cmid, String cmtype) {
		super();
		this.cmid = cmid;
		this.cmtype = cmtype;
	}
	@Override
	public String toString() {
		return "CostModel [cmid=" + cmid + ", cmtype=" + cmtype + "]";
	}
	public CostModel() {
		// TODO Auto-generated constructor stub
	}
}
