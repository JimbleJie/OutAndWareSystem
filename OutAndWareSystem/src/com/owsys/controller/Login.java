package com.owsys.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.owsys.utils.DBUtils;

public class Login {
	DBUtils db = new DBUtils();
	public String GetPassword(String email) throws Exception {
		Connection ccw = db.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select password from userinfo where email='" + email + "'");
		String password = "";
		while(rs.next()) {
			password = rs.getString(1);
		}
		return password;
	}
}
