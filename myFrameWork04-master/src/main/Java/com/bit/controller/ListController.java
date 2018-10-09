package com.bit.controller;

import com.bit.model.GuestDao;
import com.bit.utils.BitController;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

public class ListController implements BitController {

    @Override
    public String execute(HttpServletRequest request) {
        GuestDao dao = new GuestDao();

        try {
            request.setAttribute("alist", dao.selectAll());
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "list";
    }
}
