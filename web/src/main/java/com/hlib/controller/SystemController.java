package com.hlib.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by hlib on 2016/2/23 0023.
 */
@Controller
public class SystemController {

    private String dir = "/admin/";

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login(){
        Subject subject = SecurityUtils.getSubject();
        return subject.isRemembered() || subject.isAuthenticated() ? "redirect:main" : dir+"login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String fail(@RequestParam(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM) String userName,Model model){
        model.addAttribute(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM, userName);
        return dir+"login";
    }

    @RequestMapping(value = "/main",method = RequestMethod.GET)
    public String main(){
        return "main";
    }

}
