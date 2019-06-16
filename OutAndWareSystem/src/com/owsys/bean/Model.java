package com.owsys.bean;

public class Model {
	public String mtype;
	public String mspec;
	public Double mweight;
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
	public void Double(Double mweight) {
		this.mweight = mweight;
	}
	@Override
	public String toString() {
		return "Model [mtype=" + mtype + ", mspec=" + mspec + ", mweight=" + mweight + "]";
	}
	public Model(String mtype, String mspec, java.lang.Double mweight) {
		super();
		this.mtype = mtype;
		this.mspec = mspec;
		this.mweight = mweight;
	}
	
}
