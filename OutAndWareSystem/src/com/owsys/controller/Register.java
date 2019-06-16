package com.owsys.controller;

import java.sql.Connection;
import java.sql.Statement;

import com.owsys.utils.DBUtils;

public class Register {
	public void RegisteUser(String email, String password, String company, String tel, String username)
			throws Exception {
		DBUtils db = new DBUtils();
		Connection conn = db.getConnection();
		Statement cs = conn.createStatement();
		String sql = "insert into userinfo (email, password, company, tel, username) " + "values('" + email + "','"
				+ password + "','" + company + "','"+tel+"','"+username+"')";
		cs.executeUpdate(sql);
	}
}
