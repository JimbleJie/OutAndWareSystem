package com.owsys.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtils {
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://188.131.202.120:3306/owsys";
	String localurl = "jdbc:mysql://localhost:3306/owsys";
	String localuser = "root";
	String localpwd = "yanjingjie";
	String user = "test_user";
	String password = "123456";

	public Connection getConnection() {
		Connection conn = null;
		try {

			// 这两句话会抛异常！

			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password); // 和数据库建立连接
//			conn = DriverManager.getConnection(localurl, localuser, localpwd);
		} catch (ClassNotFoundException e) {
			e.printStackTrace(); // 异常处理不明白，就按照这么写了
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return conn; // 方法要记得返回一个连接对象
	}
}
