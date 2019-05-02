package com.hengdelian.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hengdelian.bean.WarehousInfo;
import com.hengdelian.utils.DBUtils;

public class Reconciliation {
	public List<WarehousInfo> SelectWarehouseinfoBySup(String sup) throws Exception {
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select * from warehouseinfo where wsupname='" + sup + "'");
		List<WarehousInfo> total = new ArrayList<WarehousInfo>();
		while (rs.next()) {
			int id = rs.getInt(1);
			String date = rs.getString(2);
			String type = rs.getString(3);
			String spec = rs.getString(4);
			int num = rs.getInt(5);
			Double sweight = rs.getDouble(6);
			Double aweight = rs.getDouble(7);
			Double sprice = rs.getDouble(8);
			Double aprice = rs.getDouble(9);
			WarehousInfo wi = new WarehousInfo(id, date, type, spec, num, sweight, aweight, sprice, aprice,sup);
			total.add(wi);
		}
		return total;
	}
}
