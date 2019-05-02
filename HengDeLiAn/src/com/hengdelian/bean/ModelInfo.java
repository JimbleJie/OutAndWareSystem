package com.hengdelian.bean;

public class ModelInfo {
	private int mid; //id
	private String mtype; //种类
	private String mspec; //规格
	private Double mweight; //理论重量
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	public String getMspec() {
		return mspec;
	}
	public void setMspec(String mspec) {
		this.mspec = mspec;
	}
	public Double getMweight() {
		return mweight;
	}
	public void setMweight(Double mweight) {
		this.mweight = mweight;
	}
	@Override
	public String toString() {
		return "ModelInfo [mid=" + mid + ", mtype=" + mtype + ", mspec=" + mspec + ", mweight=" + mweight + "]";
	}
	public ModelInfo(int mid, String mtype, String mspec, Double mweight) {
		super();
		this.mid = mid;
		this.mtype = mtype;
		this.mspec = mspec;
		this.mweight = mweight;
	}
	public ModelInfo() {
		// TODO Auto-generated constructor stub
	}
}
