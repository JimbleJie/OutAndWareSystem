package com.owsys.controller;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.owsys.utils.DBUtils;

public class CustomerInfo {
	public void InsertCustomer(String cusname, String cusunityname, String custel, String username) throws SQLException {
		DBUtils db = new DBUtils();
		Connection cc = db.getConnection();
		Statement ct = cc.createStatement();
		String sql = "insert into cusinfo (cusname,cusunityname,custel,username) values ('" + cusname + "','"
				+ cusunityname + "','" + custel + "','" + username + "')";
		ct.executeUpdate(sql);
	}
}
