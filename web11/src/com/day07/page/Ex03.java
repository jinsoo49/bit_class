package com.day07.page;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex03 extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id = req.getParameter("id");
		
		PrintWriter out = resp.getWriter();		
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>");
		out.println("post id-------------------------"+id);		
		out.println("</h1>");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id = req.getParameter("id");
		
		PrintWriter out = resp.getWriter();		
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>");
		out.println("get id-------------------------"+id);		
		out.println("</h1>");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");	
	}
}
