package com.hlib.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by hlib on 2016/2/25 0025.
 */
@Controller
@RequestMapping(value = "/front/")
public class FrontController {

    private String dir = "/front/";

    @RequestMapping(value = "index")
    public String index(){
        return dir + "index";
    }

    @RequestMapping(value = "photoes")
    public String photoes(){
        return dir + "photoes";
    }


}
