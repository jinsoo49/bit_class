package com.bit.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.GuestDao;
import com.bit.model.GuestDto;

public class listController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		// model 작업
		GuestDao dao = new GuestDao();
		ArrayList<GuestDto> list = dao.selectAll();
		int tot = dao.recordTotal();
		
		//requestscope에 list를 담는 작업
		req.setAttribute("alist", list);
		req.setAttribute("tot", list);
		
		// view 위임
		RequestDispatcher rd =  req.getRequestDispatcher("list.jsp");
		rd.forward(req, resp);
		
	}
}
