package com.bit.controller;

import com.bit.model.GuestDao;
import com.bit.model.entity.GuestVo;
import com.bit.utils.BitController;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

public class InsertController implements BitController {
    @Override
    public String execute(HttpServletRequest request) {
        String param1 = request.getParameter("sabun");
        String param2 = request.getParameter("name");
        String param3 = request.getParameter("pay");

        GuestDao dao = new GuestDao();
        GuestVo bean = new GuestVo();
        bean.setName(param2);
        bean.setSabun(Integer.parseInt(param1));
        bean.setPay(Integer.parseInt(param3));

        try {
            dao.insertOne(bean);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "redirect:list.do";
    }
}
