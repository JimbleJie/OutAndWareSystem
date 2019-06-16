package com.owsys.controller;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.owsys.utils.DBUtils;

public class SupplierController {
	public void InsertSupplier(String supname, String supunityname, String suptel, String username) throws SQLException {
		DBUtils db = new DBUtils();
		Connection cc = db.getConnection();
		Statement ct = cc.createStatement();
		String sql = "insert into supinfo (supname,supunityname,suptel,username) values ('" + supname + "','"
				+ supunityname + "','" + suptel + "','" + username + "')";
		ct.executeUpdate(sql);
	}
}
