package com.day08.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.day08.dao.bbsDao;

public class deletePage extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sql = "delete from bbs where num=?";
		String num = req.getParameter("num");
		
		bbsDao dao = new bbsDao();
		dao.delete(Integer.parseInt(num));
		
		resp.sendRedirect("../index.jsp?pg=bbs&action=list");
		
	}
}
