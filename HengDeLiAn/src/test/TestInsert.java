package test;

import java.sql.Connection;
import java.sql.Statement;

import com.hengdelian.utils.DBUtils;

public class TestInsert {
	public void Insert(String totype, String tospec, String tonum) throws Exception {
		DBUtils db = new DBUtils();
		Connection conn = db.getConnection();
		Statement cs = conn.createStatement();
		String sql = "insert into totalinventory (totype, tospec, tonum) "
				+ "values('" + totype + "','" + tospec + "','"+tonum+"')";
		cs.executeUpdate(sql);
	}
}
