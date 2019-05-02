package com.hengdelian.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hengdelian.bean.OuthousInfo;
import com.hengdelian.utils.DBUtils;

public class OuthousingControl {
	public void InsertOuthousing(String date, String otype, String ospec, String onum, double osprice, double oaprice,
			String ocusname) throws Exception {
		DBUtils db = new DBUtils();
		Connection cc = db.getConnection();
		Statement ct = cc.createStatement();
		String sql = "insert into outhousinfo (odate,otype,ospec,onum,osprice,oaprice,ocusname) values ('" + date
				+ "','" + otype + "','" + ospec + "','" + onum + "','" + osprice + "','" + oaprice + "','" + ocusname
				+ "')";
		ct.executeUpdate(sql);
	}

	public List<OuthousInfo> SelectOuthousing() throws Exception {
		DBUtils dbw = new DBUtils();
		Connection ccw = dbw.getConnection();
		Statement cs = ccw.createStatement();
		ResultSet rs = cs.executeQuery("select * from outhousinfo");
		List<OuthousInfo> outhouse = new ArrayList<OuthousInfo>();
		while (rs.next()) {
			int oidq = rs.getInt(1);
			String odateq = rs.getString(2);
			String otypeq = rs.getString(3);
			String ospecq = rs.getString(4);
			int onumq = rs.getInt(5);
			Double ospriceq = rs.getDouble(6);
			Double oapriceq = rs.getDouble(7);
			String ocusnameq = rs.getString(8);

			OuthousInfo ws = new OuthousInfo(oidq, odateq, otypeq, ospecq, onumq, ospriceq, oapriceq, ocusnameq);
			outhouse.add(ws);
		}
		return outhouse;
	}
}
