<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/2/25 0025
  Time: 下午 4:55:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ include file="../../public/taglib.jsp"%>
<div class="header">
  <div class="header-top">
    <div class="container">
      <div class="header-top-in">
        <div class="logo">
          <a href="stat/index.html"><img src="${ctx}/front-res/images/logo.png" alt=" " ></a>
        </div>
        <div class="header-in">
          <ul class="icon1 sub-icon1">
            <li  ><a href="stat/account.html">我的账号</a></li>
            <li ><a href="#" >购物车</a></li>
            <li><div class="cart">
              <a href="#" class="cart-in"> </a>
              <span> 0</span>
            </div>
              <ul class="sub-icon1 list">
                <h3>最近添加的商品(3)</h3>
                <div class="shopping_cart">
                  <div class="cart_box">
                    <div class="message">
                      <div class="alert-close"> </div>
                      <div class="list_img"><img src="${ctx}/front-res/images/14.jpg" class="img-responsive" alt=""></div>
                      <div class="list_desc"><h4><a href="#">velit esse molestie</a></h4>1 x<span class="actual">
		                             $12.00</span></div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="cart_box1">
                    <div class="message1">
                      <div class="alert-close1"> </div>
                      <div class="list_img"><img src="${ctx}/front-res/images/15.jpg" class="img-responsive" alt=""></div>
                      <div class="list_desc"><h4><a href="#">velit esse molestie</a></h4>1 x<span class="actual">
		                             $12.00</span></div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                </div>
                <div class="total">
                  <div class="total_left">CartSubtotal : </div>
                  <div class="total_right">$250.00</div>
                  <div class="clearfix"> </div>
                </div>
                <div class="login_buttons">
                  <div class="check_button"><a href="stat/checkout.html">去结算</a></div>
                  <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
              </ul>
            </li>
          </ul>
        </div>
        <div class="clearfix"> </div>
      </div>
    </div>
  </div>
  <div class="header-bottom">
    <div class="container">
      <div class="h_menu4">
        <a class="toggleMenu" href="#">菜单</a>
        <ul class="nav">
          <li class="active"><a href="${ctx}/front/index/show"><i> </i>首页</a></li>
          <!--<li ><a href="#" >笔记本</a>
              <ul class="drop">
                  <li><a href="products.html">Sony(2)</a></li>
                  <li><a href="products.html">Android(4)</a></li>
                  <li><a href="products.html">Apple(7)</a></li>
                  <li><a href="products.html">Acer(53)</a></li>
                  <li><a href="products.html">HP(78)</a></li>
                  <li><a href="products.html">Intel(5)</a></li>
              </ul>
              </li> 		-->
          <li><a href="${ctx}/front/product/list" >产品</a></li>
          <li><a href="stat/contact.html" >Contact </a></li>

        </ul>
      </div>
    </div>
  </div>
</div>

