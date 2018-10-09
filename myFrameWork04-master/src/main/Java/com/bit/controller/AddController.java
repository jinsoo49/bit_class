package com.bit.controller;

import com.bit.utils.BitController;

import javax.servlet.http.HttpServletRequest;

public class AddController implements BitController {
    @Override
    public String execute(HttpServletRequest request) {
        return "add";
    }
}
