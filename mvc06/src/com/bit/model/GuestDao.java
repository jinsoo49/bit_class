package com.bit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

public class GuestDao {
	
	private String driver;
	private String url;
	private String user;
	private String password;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	public GuestDao(HttpServletRequest req) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated constructor stub
		ServletContext sc = req.getServletContext();
		String driver = sc.getInitParameter("driver");
		String url = sc.getInitParameter("url");
		String user = sc.getInitParameter("user");
		String password = sc.getInitParameter("password");
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, password);
	}


	public ArrayList<GuestDto> selectAll() throws SQLException {
		// TODO Auto-generated method stub
		ArrayList<GuestDto> list = new ArrayList<GuestDto>();
		
		String sql = "select * from guest order by sabun desc";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				GuestDto bean = new GuestDto();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
			}			
		} finally {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();			
		}
		return list;
	}


	public void insertOne(String name, int pay) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into guest values (guest_seq.nextval,?,sysdate,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, pay);
			pstmt.executeUpdate();			
		} finally {
			if(pstmt != null)pstmt.close();
			if(conn != null)conn.close();
		}
	}


	public GuestDto selectOne(int sabun) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from guest where sabun=?";
		GuestDto bean = new GuestDto();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
			}
		} finally {			
			if(rs != null)rs.close();
			if(pstmt != null)pstmt.close();
			if(conn != null)conn.close();
		}
		
		return bean;
	}
}
