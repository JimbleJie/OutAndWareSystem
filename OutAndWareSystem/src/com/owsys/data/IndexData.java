package com.owsys.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.owsys.utils.DBUtils;


public class IndexData {
//	购货金额
	public int WareTotal(String date) throws Exception {
		int waretotal = 0;
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select waprice from warehouseinfo where wdate=" + date + "");
		while (rs.next()) {
			waretotal += rs.getInt(1);
		}
		return waretotal;
	}
//	总收入，卖货金额
	public int OutTotal(String date) throws Exception {
		int outTotal = 0;
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select oaprice from outhousinfo where odate=" + date + "");
		while (rs.next()) {
			outTotal += rs.getInt(1);
		}
		return outTotal;
	}
//	出单数
	public int OutTotalNums(String date) throws Exception {
		int outTotalNums = 0;
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select odate from outhousinfo where odate=" + date + "");
		while (rs.next()) {
			outTotalNums += 1;
		}
		return outTotalNums;
	}
//	账户信息
	public String GetCompany(Object email) throws Exception {
		String company = "";
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select company from userinfo where email='" + email + "'");
		while(rs.next()) {
			company = rs.getString(1);
		}
		return company;
	}
}
