package com.bit.myapp02.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/guest3")
public class Ex02Controller {

    @RequestMapping("/lec01")
    public String ex01(){
        return "ex10";
    }

    @RequestMapping("/lec02")
    public String ex03(String id, String pw, Model model, HttpServletRequest request){
        HttpSession session = request.getSession();
        if(id.equals("admin") && pw.equals("1234")) {
            session.setAttribute("login", true);    // session에 로그인값 저장
        }
        return "ex11";
    }

    @RequestMapping("/lec03/{msg}") // http://localhost:8088/guest3/lec03/aaaaaaaa
    public String ex04(@PathVariable int msg, Model model){     // @PathVariable path 경로로 받음
        model.addAttribute("msg", msg+100);
        return "ex12";
    }
}
