package test;

import java.sql.Connection;
import java.sql.Statement;

import com.hengdelian.utils.DBUtils;

public class TestUpdate {
	public void Update(String utype, String uspec, String unum) throws Exception {
		DBUtils db = new DBUtils();
		Connection conn = db.getConnection();
		Statement cs = conn.createStatement();
		String sql = "update totalinventory set tonum=tonum-" + unum + " where totype='" + 
		utype + "' and tospec='"+uspec+"'";
		System.out.println(sql);
		cs.executeUpdate(sql);
	}
}
