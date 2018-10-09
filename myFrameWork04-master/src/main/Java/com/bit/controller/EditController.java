package com.bit.controller;

import com.bit.model.GuestDao;
import com.bit.utils.BitController;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

public class EditController implements BitController {

    @Override
    public String execute(HttpServletRequest request) {
        String param = request.getParameter("idx");
        int pk = Integer.parseInt(param);

        GuestDao dao = new GuestDao();

        try {
            request.setAttribute("bean", dao.selectOne(pk));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("view", "Update");
        return "detail";
    }
}
