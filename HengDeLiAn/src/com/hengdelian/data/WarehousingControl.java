package com.hengdelian.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hengdelian.bean.WarehousInfo;
import com.hengdelian.utils.DBUtils;

public class WarehousingControl {

	public void InsertWarehousing(String date, String wtype, String wspec, String wnum, double wsweight,
			double waweight, double wsprice, double waprice, String wsupname) throws Exception {
		DBUtils db = new DBUtils();
		Connection cc = db.getConnection();
		Statement ct = cc.createStatement();
		String sql = "insert into warehouseinfo (wdate,wtype,wspec,wnum,wsweight,waweight,wsprice,waprice,wsupname) values ('"
				+ date + "','" + wtype + "','" + wspec + "','" + wnum + "','" + wsweight + "','" + waweight + "','"
				+ wsprice + "','" + waprice + "','" + wsupname + "')";
		ct.executeUpdate(sql);
	}

	public List<WarehousInfo> SelectWarehousing() throws Exception {
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select * from warehouseinfo");
		List<WarehousInfo> warehouse = new ArrayList<WarehousInfo>();
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
			WarehousInfo ws = new WarehousInfo(widq, wdateq, wtypeq, wspecq, wsnumq, wsweightq, waweightq, wspriceq,
					wapriceq, wsupnameq);
			warehouse.add(ws);
		}
		return warehouse;
	}
	
	public List<String> getAllSpec(String mtype) throws Exception {
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select mspec from modelinfo where mtype='"+mtype+"'");
		List<String> mspec = new ArrayList<String>();
		while (rs.next()) {
			String mspecs = rs.getString(0);
			mspec.add(mspecs);
		}
		return mspec;
	}
}
