package com.hengdelian.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hengdelian.bean.Cost;
import com.hengdelian.utils.DBUtils;

public class CostController {
	public void InsertWarehousing(String cdate, String ctype, double cprice) throws Exception {
		DBUtils db = new DBUtils();
		Connection cc = db.getConnection();
		Statement ct = cc.createStatement();
		String sql = "insert into cost (cdate,ctype,cprice) values ('" + cdate + "','" + ctype + "','" + cprice + "')";
		ct.executeUpdate(sql);
	}

	public List<Cost> SelectCost() throws Exception {
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select * from cost");
		List<Cost> cost = new ArrayList<Cost>();
		while (rs.next()) {
			int cidq = rs.getInt(1);
			String cdateq = rs.getString(2);
			String ctypeq = rs.getString(3);
			Double cpriceq = rs.getDouble(9);
			Cost cos = new Cost(cidq, cdateq, ctypeq, cpriceq);
			cost.add(cos);
		}
		return cost;
	}
}
