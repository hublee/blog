package com.hlib.controller.front.shop;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by hlib on 2016/2/25 0025.
 */
@RequestMapping(value = "/front/shop/product/")
public class FrontProductController extends FrontBaseController {

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String list(){
        return dir + "product";
    }

    @RequestMapping(value = "detail",method = RequestMethod.GET)
    public String detail(Integer productId){
        return dir + "single";
    }


}
