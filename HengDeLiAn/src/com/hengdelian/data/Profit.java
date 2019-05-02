package com.hengdelian.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.hengdelian.utils.DBUtils;

public class Profit {
	public int TodayProfit(String date) throws SQLException {
		int tp = 0;
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select wnum from warehouseinfo where wdate=" + date + "");
		while (rs.next()) {
			tp += rs.getInt(1);
		}
		return tp;
	}
}
