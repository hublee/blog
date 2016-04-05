package com.hlib.controller.front.shop;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by hlib on 2016/2/25 0025.
 */
@RequestMapping(value = "/front/shop/checkout/")
public class FrontCheckoutController extends FrontBaseController {

    @RequestMapping(value = "show",method = RequestMethod.GET)
    public String show(){
        return dir + "checkout";
    }

}
