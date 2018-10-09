package com.day07.page;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.day07.util.MyOracle;

public class UpdatePage extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String param1 = req.getParameter("sabun");
		String param2 = req.getParameter("name");
		String param3 = req.getParameter("pay");
		
		//유효성 검사 해야됨


		int sabun = Integer.parseInt(param1.trim());
		String name = param2.trim();
		int pay = Integer.parseInt(param3.trim());
		
		//String sql = "update guest set name ='"+name+"', pay="+pay+" where sabun="+sabun;
		
		//Connection conn = MyOracle.getConnection();
		//Statement stmt = null;
		
		String sql = "update guest set name=?, pay=? where sabun=?";
		
		int result = 0;
		PreparedStatement pstmt = null;
		try {
		//	stmt = conn.createStatement();
		//	result = stmt.executeUpdate(sql);
			
			pstmt = MyOracle.getConnection().prepareStatement(sql);
			
			// 자연스럽게 자료형 일치시켜줌, 쿼리문을 이용한 공격을 방지하기 위해 탄생
			pstmt.setString(1, name);
			pstmt.setInt(2, pay);
			pstmt.setInt(3, sabun);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null){
					pstmt.close();
				}
				MyOracle.getConnection().close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if (result > 0){
			resp.sendRedirect("detail.jsp?sabun="+sabun);
		} else {
			resp.sendRedirect("edit.jsp?sabun="+sabun+"&name="+name+"&pay="+pay);
		}
		
	}
}
