package com.bit.data;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class Myjson extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
//		String msg = "{\"root\":["
//				+ "{\"id\":\"user1\",\"pw\":\"1234\"},"
//				+ "{\"id\":\"user2\",\"pw\":\"1235\"},"
//				+ "{\"id\":\"user3\",\"pw\":\"1236\"}]}";
//		
		String callback = req.getParameter("callback");
		
		String msg = callback+"({\"message\":\"test ok\"})";
//		resp.setContentType("application/json; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.print(msg);
		out.close();
	}
}
