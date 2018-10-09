package com.bit.spring06.controller;

import com.bit.spring06.model.GuestDao;
import com.bit.spring06.model.entity.GuestVo;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractCommandController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditController extends AbstractCommandController {
    private GuestDao guestDao;

    public void setGuestDao(GuestDao guestDao) {
        this.guestDao = guestDao;
    }

    @Override
    protected ModelAndView handle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, BindException e) throws Exception {
        GuestVo bean = (GuestVo) o;
        if(guestDao.updateOne(bean) > 0) return new ModelAndView("redirect:/detail.bit?idx="+bean.getSabun());
        return new ModelAndView("redirect:/edit.bit?idx="+bean.getSabun());

    }
}
