package lec.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import lec.model.lecDto;



public class lecDao{
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;	

	public lecDao(HttpServletRequest req) throws ClassNotFoundException, SQLException{
		// TODO Auto-generated constructor stub
		ServletContext sc = req.getServletContext();
		String driver = sc.getInitParameter("driver");
		String url = sc.getInitParameter("url");
		String user = sc.getInitParameter("user");
		String password = sc.getInitParameter("password");
		
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		
	}

	public ArrayList<lecDto> selectAll() {
		ArrayList<lecDto> list = new ArrayList<lecDto>();		
		String sql = "select * from lechure order by lecNo desc";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				lecDto bean = new lecDto();
				bean.setLecNo(rs.getInt("lecNo"));
				bean.setLecName(rs.getString("lecName"));
				bean.setLecStart(rs.getDate("lecStart"));
				bean.setLecEnd(rs.getDate("lecEnd"));
				bean.setLecCon(rs.getString("lecCon"));
				bean.setTeaId(rs.getString("teaId"));
				bean.setClassNo(rs.getInt("classNum"));
				bean.setLecIpD(rs.getDate("lecIpD"));
				bean.setLecIpN(rs.getString("lecIpN"));
				list.add(bean);
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
	
	
	
	
	
	
}
