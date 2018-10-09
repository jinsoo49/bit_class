package com.bit.myapp03.controller;


import com.bit.myapp03.model.GuestDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.SQLException;

@Controller
public class GuestController {

    @Autowired
    GuestDao guestDao;

    @RequestMapping("/list")
    public void list(Model model) throws SQLException {
        model.addAttribute("alist", guestDao.selectAll());
    }
}
