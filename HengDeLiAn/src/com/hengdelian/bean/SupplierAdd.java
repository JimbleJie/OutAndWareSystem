package com.hengdelian.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.hengdelian.utils.DBUtils;

public class SupplierAdd {
	public static void main(String[] args) throws Exception {
		DBUtils dbto = new DBUtils();
		Connection ccto = dbto.getConnection();
		Statement csto = ccto.createStatement();
		String[] wdate = {"20181202","20181202"};
		String[] wtype = {"平焊法兰","平焊法兰"};
		String[] wspec  = {"150*16","250*16"};
		int[] wnum = {200,100};
		ResultSet rsto = csto.executeQuery("select * from totalinventory");
		for (int j = 0; j < wdate.length; j++) {
			while (rsto.next()) {
				String totypeq = rsto.getString(2);
				String tospecq = rsto.getString(3);
				if (totypeq.equals(wtype[j]) && tospecq.equals(wspec[j])) {
					String uptotal = "update totalinventory set tonum=tonum+" + wnum[j] + " where totype=" + "'"
							+ wtype[j] + "' and tospec='" + wspec[j] + "'";
					csto.executeUpdate(uptotal);
				} else {
					String addtotal = "insert into totalinventory (totype,tospec,tonum) values ('" + wtype[j]
							+ "','" + wspec[j] + "','" + wnum[j] + "')";
					csto.executeUpdate(addtotal);
				}
			}
		}
	}
}
