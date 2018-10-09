package com.bit.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.bit.model.entity.GuestDto;

public class GuestDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public GuestDao() {
		// TODO Auto-generated constructor stub
		try {
			InitialContext icntxt = new InitialContext();
//			Context cntxt= (Context) icntxt.lookup("java:/comp/env");
//			DataSource source = (DataSource) cntxt.lookup("jdbc/oracle");
			
			DataSource source = (DataSource) icntxt.lookup("java:/comp/env/jdbc/oracle");
			conn = source.getConnection();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	public List<GuestDto> selectAll() throws SQLException {

		List<GuestDto> list = new ArrayList<GuestDto>();
	
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
			if(conn!=null)conn.close();
			// TODO: handle exception
		}
		return list;
	}
}
