package com.hlib.controller.front.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by hlib on 2016/2/25 0025.
 */
@Controller
@RequestMapping(value = "/front/shop/index/")
public class FrontIndexController extends FrontBaseController{

    @RequestMapping(value = "show")
    public String index(){
        return dir + "index";
    }





}
