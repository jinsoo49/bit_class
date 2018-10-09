package com.bit.controller;

import com.bit.model.GuestDao;
import com.bit.model.entity.GuestVo;
import com.bit.utils.BitController;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

public class UpdateController implements BitController {
    @Override
    public String execute(HttpServletRequest request) {

        String param1 = request.getParameter("sabun");
        String param2 = request.getParameter("name");
        String param3 = request.getParameter("pay");

        // 무결성 검증
        GuestVo bean = new GuestVo(param2, Integer.parseInt(param1), null, Integer.parseInt(param3));

        GuestDao dao = new GuestDao();
        try {
            if(dao.updateOne(bean) > 0) return "redirect:detail.do?idx="+param1;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "redirect:edit.do?idx="+param1;
    }
}
