package com.hengdelian.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.hengdelian.utils.DBUtils;

public class IndexController {
	public int WareTotal(String date) throws SQLException {
		int waretotal = 0;
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select wnum from warehouseinfo where wdate=" + date + "");
		while (rs.next()) {
			waretotal += rs.getInt(1);
		}
		return waretotal;
	}

	public int OutTotal(String date) throws SQLException {
		int outtotal = 0;
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select onum from outhousinfo where odate=" + date + "");
		while (rs.next()) {
			outtotal += rs.getInt(1);
		}
		return outtotal;
	}
}
