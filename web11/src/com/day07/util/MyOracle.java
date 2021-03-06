package com.day07.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyOracle {
	private static Connection conn;
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER = "scott";
	private static final String PASSWORD = "tiger";
	
	private MyOracle() {
		
	}
	
	public static Connection getConnection() {
		
		// ���������� - �̱��� ����
		try {
			if(conn == null || conn.isClosed()){
				Class.forName(DRIVER);
				conn = DriverManager.getConnection(URL,USER, PASSWORD);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}

}
