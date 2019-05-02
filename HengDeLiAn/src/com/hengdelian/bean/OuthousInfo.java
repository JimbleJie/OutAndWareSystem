package com.hengdelian.bean;

public class OuthousInfo {
	private int oid;
	private String odate;
	private String otype;
	private String ospec;
	private int onum;
	private double osprice;
	private double oaprice;
	private String ocusname;
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	public String getOtype() {
		return otype;
	}
	public void setOtype(String otype) {
		this.otype = otype;
	}
	public String getOspec() {
		return ospec;
	}
	public void setOspec(String ospec) {
		this.ospec = ospec;
	}
	public int getOnum() {
		return onum;
	}
	public void setOnum(int onum) {
		this.onum = onum;
	}
	public double getOsprice() {
		return osprice;
	}
	public void setOsprice(double osprice) {
		this.osprice = osprice;
	}
	public double getOaprice() {
		return oaprice;
	}
	public void setOaprice(double oaprice) {
		this.oaprice = oaprice;
	}
	public String getOcusname() {
		return ocusname;
	}
	public void setOcusname(String ocusname) {
		this.ocusname = ocusname;
	}
	@Override
	public String toString() {
		return "OuthousInfo [oid=" + oid + ", odate=" + odate + ", otype=" + otype + ", ospec=" + ospec + ", onum="
				+ onum + ", osprice=" + osprice + ", oaprice=" + oaprice + ", ocusname=" + ocusname + "]";
	}
	public OuthousInfo(int oid, String odate, String otype, String ospec, int onum, double osprice, double oaprice,
			String ocusname) {
		super();
		this.oid = oid;
		this.odate = odate;
		this.otype = otype;
		this.ospec = ospec;
		this.onum = onum;
		this.osprice = osprice;
		this.oaprice = oaprice;
		this.ocusname = ocusname;
	}
	public OuthousInfo() {
		// TODO Auto-generated constructor stub
	}
}
