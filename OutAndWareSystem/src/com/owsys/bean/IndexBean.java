package com.owsys.bean;

public class IndexBean {
	public int id;
	public double all;
	public double buy;
	public double profit;
	public double sale;
	public int salenums;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getAll() {
		return all;
	}
	public void setAll(double all) {
		this.all = all;
	}
	public double getBuy() {
		return buy;
	}
	public void setBuy(double buy) {
		this.buy = buy;
	}
	public double getProfit() {
		return profit;
	}
	public void setProfit(double profit) {
		this.profit = profit;
	}
	public double getSale() {
		return sale;
	}
	public void setSale(double sale) {
		this.sale = sale;
	}
	public int getSalenums() {
		return salenums;
	}
	public void setSalenums(int salenums) {
		this.salenums = salenums;
	}
	@Override
	public String toString() {
		return "IndexBean [id=" + id + ", all=" + all + ", buy=" + buy + ", profit=" + profit + ", sale=" + sale
				+ ", salenums=" + salenums + "]";
	}
	public IndexBean(int id, double all, double buy, double profit, double sale, int salenums) {
		super();
		this.id = id;
		this.all = all;
		this.buy = buy;
		this.profit = profit;
		this.sale = sale;
		this.salenums = salenums;
	}
	public IndexBean() {
		// TODO Auto-generated constructor stub
	}
}
