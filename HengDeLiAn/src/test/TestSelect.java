package test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.hengdelian.utils.DBUtils;

public class TestSelect {
	public void select() throws SQLException {
		DBUtils db = new DBUtils();
		Connection conn = db.getConnection();
		Statement cs = conn.createStatement();
		ResultSet rs = cs.executeQuery("select * from totalinventory");
		while (rs.next()) {
			String totype = rs.getString(2);
			String tospec = rs.getString(3);
			String tonum = rs.getString(4);
			System.out.println(totype + tospec + tonum);
		}
	}

	public void isExist(String totype, String tospec, String tonum) throws Exception {
		DBUtils db = new DBUtils();
		Connection conn = db.getConnection();
		Statement cs = conn.createStatement();
		ResultSet rs = cs.executeQuery("select * from totalinventory");
		int count = TotalCount(totype, tospec);
//		if (rs.getFetchSize() == 0) {
//			InsertTotal(totype, tospec, tonum);
//		}
//		System.out.println(tospec+"==="+rs.getString(3));
//		if (rs.getFetchSize() > 0 && totype.equals(rs.getString(2)) && tospec.equals(rs.getString(3))) {
//			System.out.println(rs.getString(3));
//			UpdateWareTotal(totype, tospec, tonum);
//		} else {
//			InsertTotal(totype, tospec, tonum);
//		}
		if (count == 0) {
			TestInsert ti = new TestInsert();
			ti.Insert(totype, tospec, tonum);

		}else if(count == 1) {
			TestUpdate tu = new TestUpdate();
			tu.Update(totype, tospec, tonum);
		}

	}

	public int TotalCount(String type, String spec) throws SQLException {
		DBUtils db = new DBUtils();
		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
//		select sum(totype='平焊法兰' and tospec='150*16') totalCount from totalinventory;
		ResultSet rs = stmt.executeQuery(
				"select sum(totype='" + type + "' and tospec='" + spec + "')totalCount from totalinventory");
		int count = 0;
		while (rs.next()) {
			count = rs.getInt(1);
		}
		return count;
	}
}
