package com.bit.controller;

import com.bit.model.GuestDao;
import com.bit.utils.BitController;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

public class DeleteController implements BitController {

    @Override
    public String execute(HttpServletRequest request) {
        int pk = Integer.parseInt(request.getParameter("idx"));
        GuestDao dao = new GuestDao();
        try {
            if(dao.deleteOne(pk) > 0) return "redirect:list.do";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "redirect:detail.do?idx="+pk;
    }
}
