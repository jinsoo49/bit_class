package com.bit.myapp01;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bit.myapp01.model.GuestDao;

@Controller
public class Ex01Controller {
	GuestDao guestDao;
	
	@Autowired
	public void setGuestDao(GuestDao guestDao) {
		this.guestDao = guestDao;
	}

	@RequestMapping("/test.bit")
	public ModelAndView execute(HttpServletRequest req
			, HttpServletResponse resp) throws Exception{
		return new ModelAndView("index");
	}
	
	@RequestMapping("/index.bit")
	public ModelAndView ex01(HttpServletRequest req
			, HttpServletResponse resp) throws Exception{
		req.setAttribute("msg", "ex01() run...");
		return new ModelAndView("index");
	}
	
	@RequestMapping("/ex02.bit")
	public String ex02(HttpServletRequest req
			, HttpServletResponse resp) throws Exception{
		req.setAttribute("msg", "ex02() run...");
		return "index";
	}
	
	@RequestMapping("/ex03.bit")
	public String ex03(HttpServletRequest req) {
		req.setAttribute("msg", "ex03() run...");
		return "index";
	}
	
	@RequestMapping("/ex04.bit")
	public String ex04(Model model) {
		model.addAttribute("msg", "ex04() run...");
		return "index";
	}
	
	@RequestMapping("/print.bit")
	public String ex05() {
		guestDao.print();
		return "index";
	}
}








