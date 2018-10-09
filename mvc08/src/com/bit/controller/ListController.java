package com.bit.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.GuestDao;
import com.bit.model.entity.GuestDto;

@WebServlet("/guest/list.bit")
public class ListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
		
		try {
			GuestDao dao = new GuestDao();
			List<GuestDto> list = dao.selectAll();
			
			req.setAttribute("alist", list);
			
			RequestDispatcher rd = req.getRequestDispatcher("../list.jsp");
			rd.forward(req, resp);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
