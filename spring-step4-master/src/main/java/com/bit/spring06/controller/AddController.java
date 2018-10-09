package com.bit.spring06.controller;

import com.bit.spring06.model.GuestDao;
import com.bit.spring06.model.entity.GuestVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractCommandController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddController extends AbstractCommandController {

    private GuestDao guestDao;

    public void setGuestDao(GuestDao guestDao) {
        this.guestDao = guestDao;
    }

    @Override
    protected ModelAndView handle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, BindException e) throws Exception {
        GuestVo bean = (GuestVo) o;
        guestDao.insertOne(bean);
        return new ModelAndView("redirect:/list.bit");
    }
}
