package com.bit.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.GuestDao;
import com.bit.model.GuestDto;

/**
 * Servlet implementation class DetailController
 */
@WebServlet("/guest/detail.bit")
public class DetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String idx = request.getParameter("idx");
		int sabun = Integer.parseInt(idx);
		GuestDto bean = null;
		
		try {
			GuestDao dao = new GuestDao(request);
			bean = dao.selectOne(sabun);
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("bean", bean);
		
		RequestDispatcher rd = request.getRequestDispatcher("../jsp/detail.jsp");
		rd.forward(request, response);
	}

}
