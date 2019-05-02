package com.hengdelian.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hengdelian.bean.TotalInventory;
import com.hengdelian.utils.DBUtils;

public class TotalinventoryControl {
	public void InsertTotal(String totype, String tospec, String tonum) throws Exception {
		DBUtils db = new DBUtils();
		Connection conn = db.getConnection();
		Statement cs = conn.createStatement();
		String sql = "insert into totalinventory (totype, tospec, tonum) " + "values('" + totype + "','" + tospec
				+ "','" + tonum + "')";
		cs.executeUpdate(sql);
	}

	public void UpdateOutTotal(String utype, String uspec, String unum) throws Exception {
		DBUtils db = new DBUtils();
		Connection conn = db.getConnection();
		Statement cs = conn.createStatement();
		String sql = "update totalinventory set tonum=tonum-" + unum + " where totype='" + utype + "' and tospec='"
				+ uspec + "'";
		cs.executeUpdate(sql);
	}

	public void UpdateWareTotal(String utype, String uspec, String unum) throws Exception {
		DBUtils db = new DBUtils();
		Connection conn = db.getConnection();
		Statement cs = conn.createStatement();
		String sql = "update totalinventory set tonum=tonum+" + unum + " where totype='" + utype + "' and tospec='"
				+ uspec + "'";
		cs.executeUpdate(sql);
	}

	public List<TotalInventory> SelectTotalinventory() throws Exception {
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select * from totalinventory");
		List<TotalInventory> total = new ArrayList<TotalInventory>();
		while (rs.next()) {
			int tidq = rs.getInt(1);
			String ttype = rs.getString(2);
			String tspec = rs.getString(3);
			int tnum = rs.getInt(4);
			TotalInventory ti = new TotalInventory(tidq, ttype, tspec, tnum);
			total.add(ti);
		}
		return total;
	}

	public void AutoOutJudgement(String totype, String tospec, String tonum) throws Exception {
		int count = TotalCount(totype, tospec);
		if (count == 1) {
			UpdateOutTotal(totype, tospec, tonum);
		}
	}

	public void AutoWareJudgement(String totype, String tospec, String tonum) throws Exception {
		int count = TotalCount(totype, tospec);
		if (count == 0) {
			InsertTotal(totype, tospec, tonum);
		}
		if (count == 1) {
			UpdateWareTotal(totype, tospec, tonum);
		}

	}

	public int TotalCount(String type, String spec) throws SQLException {
		DBUtils db = new DBUtils();
		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(
				"select sum(totype='" + type + "' and tospec='" + spec + "')totalCount from totalinventory");
		int count = 0;
		while (rs.next()) {
			count = rs.getInt(1);
		}
		return count;
	}
	
}
