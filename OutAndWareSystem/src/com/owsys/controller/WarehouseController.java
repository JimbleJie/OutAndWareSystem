package com.owsys.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.owsys.utils.DBUtils;
import com.owsys.bean.Warehouse;

public class WarehouseController {
	public void InsertWarehousing(String date, String wtype, String wspec, String wnum, double wsweight,
			double waweight, double wsprice, double waprice, String wsupname, String username) throws Exception {
		DBUtils db = new DBUtils();
		Connection cc = db.getConnection();
		Statement ct = cc.createStatement();
		String sql = "insert into warehouseinfo (wdate,wtype,wspec,wnum,wsweight,waweight,wsprice,waprice,wsupname) values ('"
				+ date + "','" + wtype + "','" + wspec + "','" + wnum + "','" + wsweight + "','" + waweight + "','"
				+ wsprice + "','" + waprice + "','" + wsupname + "','" + username + "')";
		ct.executeUpdate(sql);
	}

	public List<Warehouse> SelectWarehousing(String username) throws Exception {
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select * from warehouseinfo where username='" + username + "'");
		List<Warehouse> warehouse = new ArrayList<Warehouse>();
		while (rs.next()) {
			int widq = rs.getInt(1);
			String wdateq = rs.getString(2);
			String wtypeq = rs.getString(3);
			String wspecq = rs.getString(4);
			int wsnumq = rs.getInt(5);
			Double wsweightq = rs.getDouble(6);
			Double waweightq = rs.getDouble(7);
			Double wspriceq = rs.getDouble(8);
			Double wapriceq = rs.getDouble(9);
			String wsupnameq = rs.getString(10);
			Warehouse ws = new Warehouse(widq, wdateq, wtypeq, wspecq, wsnumq, wsweightq, waweightq, wspriceq, wapriceq,
					wsupnameq, username);
			warehouse.add(ws);
		}
		return warehouse;
	}

	public List<String> getAllSpec(String mtype, String username) throws Exception {
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery(
				"select mspec from modelinfo where mtype='" + mtype + "' and username='" + username + "'");
		List<String> mspec = new ArrayList<String>();
		while (rs.next()) {
			String mspecs = rs.getString(0);
			mspec.add(mspecs);
		}
		return mspec;
	}
}
