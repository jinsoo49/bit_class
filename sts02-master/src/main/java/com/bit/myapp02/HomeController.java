package com.bit.myapp02;


import com.bit.myapp02.model.GuestDao;
import com.bit.myapp02.model.GuestDao01Impl;
import com.bit.myapp02.model.entity.GuestVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

@Controller
public class HomeController {
    final
    GuestDao<GuestVo> dao;

    @Autowired
    public HomeController(GuestDao<GuestVo> dao) {
        this.dao = dao;
    }

    @RequestMapping("/")
    public String index(){
        String springVersion = org.springframework.core.SpringVersion.getVersion();

        System.out.println("스프링 버전 : "+springVersion);
        return "index";
    }

    @RequestMapping("/list.bit")
    public String list(Model model){

        try {
            model.addAttribute("articleList", dao.selectAll());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "guest1/list";
    }

    @RequestMapping("/detail.bit")
    public String detail(Model model, HttpServletRequest request){

        String idx = request.getParameter("idx");
        int pk = Integer.parseInt(idx);

        try {
            model.addAttribute("bean", dao.selectOne(pk));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "guest1/detail";
    }

    @RequestMapping("/add.bit")
    public String add(){
        return "guest1/add";
    }

    @RequestMapping("/insert.bit")
    public String insert(HttpServletRequest request){
        GuestVo bean = new GuestVo();
        bean.setSabun(Integer.parseInt(request.getParameter("sabun")));
        bean.setName(request.getParameter("name"));
        bean.setPay(Integer.parseInt(request.getParameter("pay")));
        try{
            dao.insertOne(bean);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return "redirect:/list.bit";
    }

    @RequestMapping("/update.bit")
    public String update(int sabun, String name, int pay){

        GuestVo bean = new GuestVo();
        bean.setSabun(sabun);
        bean.setName(name);
        bean.setPay(pay);

        try {
            dao.updateOne(bean);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "redirect:/detail.bit?idx="+sabun;
    }
}
