package com.bit.spring06.controller;

import com.bit.spring06.model.GuestDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DelController extends AbstractController {

    // Autowried
    // 1. 타입 필드명 일치
    // 2. 타입(super O)x 필드명 일치
    // 3. 타입o 필드명x
    // 4. 타입(super O)x 필드명 일치x

    // @Autowired setter

    @Autowired(required = true)
    private GuestDao guestDao;

    //    autowired - 자동으로 setter을 호출하여 필드를 초기화

//    public void setGuestDao(GuestDao guestDao) {
//        this.guestDao = guestDao;
//    }

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        int sabun = Integer.parseInt(httpServletRequest.getParameter("idx"));
        if(guestDao.deleteOne(sabun)>0) return new ModelAndView("redirect:/list.bit");
        return new ModelAndView("redirect:/detail.bit?idx="+sabun);
    }
}
