package com.bit.controller;

import com.bit.model.GuestDao;
import com.bit.utils.BitController;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

public class DetailController implements BitController {

    @Override
    public String execute(HttpServletRequest request) {

        GuestDao dao = new GuestDao();

        String param = request.getParameter("idx");

        int pk = Integer.parseInt(param);

        try {
            request.setAttribute("bean", dao.selectOne(pk));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("view", "Detail");
        request.setAttribute("noEdit", "readonly");
        return "detail";
    }
}
