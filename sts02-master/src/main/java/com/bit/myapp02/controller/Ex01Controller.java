package com.bit.myapp02.controller;

import com.bit.myapp02.model.entity.GuestVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class Ex01Controller {

    @RequestMapping("/ex01")
    public String execute(){
        return "ex01";
    }

    // GET 방식의 접근만 허용
    @RequestMapping(value = "/ex02", method = RequestMethod.GET)
    public String execute1(){
        System.out.println("get 방식");
        return "guest/ex02";
    }

    // POST 방식의 접근만 허용
    @RequestMapping(value = "/guest/ex02", method = RequestMethod.POST)
    public void execute2(String id, double pw){ //@RequestParam 생략되었음
        System.out.println("post 방식");
        System.out.println("id : "+id);
        System.out.println("pw : "+pw);
    }

    @RequestMapping("/ex03")
    public void ex03(){}

//    #1
//    @RequestMapping("/ex04")
//    public void ex04(int sabun, String name, Model model){
//        GuestVo bean = new GuestVo();
//        bean.setSabun(sabun);
//        bean.setName(name);
//        model.addAttribute("bean", bean);
//    }

//    #2
//    @RequestMapping("/ex04")
//    public void ex04(@ModelAttribute GuestVo command, Model model){
//        model.addAttribute("bean", command);
//    }

//    #3
//    별도의 attribute를 할 필요 없이 어노테이션으로 위와 같은 퍼포먼스가 가능
//    필드에 set하고 get, ------> 해당 객체에는 getter하고 setter 존재함을 알 수 있음.
    @RequestMapping("/ex04")
    public void ex04(@ModelAttribute("bean") GuestVo command){
    }

    @RequestMapping("/{path}/{msg}") // http://localhost:8088/aaa/bbb, RESTFul방식
    public String ex05(@PathVariable String msg,@PathVariable(value = "path") String path){
        System.out.println(path);
        return "ex12";
    }
}
