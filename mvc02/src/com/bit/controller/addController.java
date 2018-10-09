package com.bit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.GuestDao;

public class addController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("add.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String param1 = req.getParameter("name");
		String param2 = req.getParameter("pay");
		
		String name = param1.trim();
		
		int pay = 0;
		
		try {
			pay = Integer.parseInt(param2.trim());
			
		} catch (NumberFormatException e) {
			// TODO: handle exception
			doGet(req, resp);
			return;
		}
		
		GuestDao dao = new GuestDao();
		dao.insertOne(name, pay);
		resp.sendRedirect("list.bit");
	}
}
