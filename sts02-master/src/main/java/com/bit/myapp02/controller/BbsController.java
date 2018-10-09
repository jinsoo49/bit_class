package com.bit.myapp02.controller;

import com.bit.myapp02.model.GuestDao;
import com.bit.myapp02.model.entity.GuestVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.sql.SQLException;

@Controller
@RequestMapping("/bbs")
public class BbsController {
    @Autowired
    GuestDao<GuestVo> guestDao;

    @RequestMapping("/list")
    public String list(Model model) throws SQLException {
        model.addAttribute("articleList", guestDao.selectAll());
        return "guest2/list";
    }

    @RequestMapping("/detail")
    public String detail(int idx, Model model) throws SQLException {
        model.addAttribute("bean", guestDao.selectOne(idx));
        return "guest2/detail";
    }

    @RequestMapping("/add")
    public String add(){
        return "guest2/add";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(int sabun, String name, int pay) throws SQLException {
        GuestVo bean = new GuestVo(sabun, name, null, pay);
        guestDao.insertOne(bean);
        return "redirect:list";
    }

    @RequestMapping("/edit")
    public String editFrom(int idx, Model model) throws SQLException {
        model.addAttribute("bean", guestDao.selectOne(idx));
        return "guest2/edit";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@ModelAttribute GuestVo bean) throws SQLException {
        if(guestDao.updateOne(bean)>0)
        return "redirect:detail?idx="+bean.getSabun();
        return "redirect:edit?idx="+bean.getSabun();
    }

    @RequestMapping(value = "/delete")
    public String delete(int idx) throws SQLException {
        guestDao.deleteOne(idx);
        return "redirect:list";
    }
}