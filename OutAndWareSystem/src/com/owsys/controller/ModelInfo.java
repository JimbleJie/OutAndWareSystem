package com.owsys.controller;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.owsys.utils.DBUtils;


public class ModelInfo {
	public void InsertModel(String mtype, String mspec, String mweight, String company) throws SQLException {
		DBUtils db = new DBUtils();
		Connection cc = db.getConnection();
		Statement ct = cc.createStatement();
		String sql = "insert into modelinfo (mtype,mspec,mweight,username) values ('" + mtype + "','"
				+ mspec + "','" + mweight + "','" + company + "')";
		ct.executeUpdate(sql);
	}
}
