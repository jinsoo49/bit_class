package com.bit.spring06.controller;

import com.bit.spring06.model.GuestDao;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BeanController extends AbstractController {

    private GuestDao guestDao;
    private String viewName;

    public void setGuestDao(GuestDao guestDao) {
        this.guestDao = guestDao;
    }

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        int sabun = Integer.parseInt(httpServletRequest.getParameter("idx"));
        return new ModelAndView(viewName, "bean", guestDao.selectOne(sabun));
    }

    public void setViewName(String viewName) {
        this.viewName = viewName;
    }
}
