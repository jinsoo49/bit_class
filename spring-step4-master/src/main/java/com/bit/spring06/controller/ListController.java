package com.bit.spring06.controller;

import com.bit.spring06.model.GuestDao;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListController extends AbstractController {

    private GuestDao guestDao;

    public void setGuestDao(GuestDao guestDao) {
        this.guestDao = guestDao;
    }

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {

        guestDao.selectAll();
        return new ModelAndView("list", "articleList", guestDao.selectAll());
    }
}
