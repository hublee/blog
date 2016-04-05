<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/2/25 0025
  Time: 下午 4:15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html lang="en">
<%@ include file="index.jsp"%>
<%--<jsp:include page="index.jsp"/>--%>
<body>
<%--<%@include file="top.jsp"%>--%>
  <div class="banner-mat">
    <div class="container">
      <div class="banner">
        <!-- Slideshow 4 -->
        <div class="slider">
          <ul class="rslides" id="slider1">
            <li><img src="${ctx}/front-res/images/banner.jpg" alt="">
            </li>
            <li><img src="${ctx}/front-res/images/banner1.jpg" alt="">
            </li>
            <li><img src="${ctx}/front-res/images/banner.jpg" alt="">
            </li>
            <li><img src="${ctx}/front-res/images/banner2.jpg" alt="">
            </li>
          </ul>
        </div>

        <div class="banner-bottom">
          <div class="banner-matter">
            <p>Childish Gambino - 仅需 ¥9.99</p>
            <a href="stat/single.html" class="hvr-shutter-in-vertical ">购买</a>
          </div>
          <!--<div class="purchase">
              <a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">购买</a>
          </div>-->
          <div class="clearfix"></div>
        </div>
      </div>
      <!-- //slider-->
    </div>
  </div>

  <!---->
  <div class="container">
    <div class="content">
      <div class="content-top">
        <h3 class="future">特色</h3>
        <div class="content-top-in">
          <div class="col-md-3 md-col">
            <div class="col-md">
              <a href="stat/single.html"><img  src="${ctx}/front-res/images/pi.jpg" alt="" /></a>
              <div class="top-content">
                <h5><a href="stat/single.html">Mascot Kitty - White</a></h5>
                <div class="white">
                  <a href="stat/single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">添加到购物车</a>
                  <p class="dollar"><span class="in-dollar">$</span><span>2</span><span>0</span></p>
                  <div class="clearfix"></div>
                </div>

              </div>
            </div>
          </div>
          <div class="col-md-3 md-col">
            <div class="col-md">
              <a href="stat/single.html"><img  src="${ctx}/front-res/images/pi1.jpg" alt="" />	</a>
              <div class="top-content">
                <h5><a href="stat/single.html">Bite Me</a></h5>
                <div class="white">
                  <a href="stat/single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">加入到购物车</a>
                  <p class="dollar"><span class="in-dollar">$</span><span>3</span><span>0</span></p>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
      <!---->
      <div class="content-middle">
        <h3 class="future">商标</h3>
        <div class="content-middle-in">
          <ul id="flexiselDemo1">
            <li><img src="${ctx}/front-res/images/ap.png"/></li>
            <li><img src="${ctx}/front-res/images/ap1.png"/></li>
            <li><img src="${ctx}/front-res/images/ap2.png"/></li>
            <li><img src="${ctx}/front-res/images/ap3.png"/></li>

          </ul>
          <script type="text/javascript">
            $(function() {
              $("#flexiselDemo1").flexisel({
                visibleItems: 4,
                animationSpeed: 1000,
                autoPlay: true,
                autoPlaySpeed: 3000,
                pauseOnHover: true,
                enableResponsiveBreakpoints: true,
                responsiveBreakpoints: {
                  portrait: {
                    changePoint:480,
                    visibleItems: 1
                  },
                  landscape: {
                    changePoint:640,
                    visibleItems: 2
                  },
                  tablet: {
                    changePoint:768,
                    visibleItems: 3
                  }
                }
              });

            });
          </script>

        </div>
      </div>
      <!---->
      <div class="content-bottom">
        <h3 class="future">最近浏览</h3>
        <div class="content-bottom-in">
          <ul id="flexiselDemo2">
            <li>
              <div class="col-md men">
                <a href="stat/single.html" class="compare-in "><img  src="${ctx}/front-res/images/pi4.jpg" alt="" />
                  <div class="compare in-compare">
                    <span>Add to Compare</span>
                    <span>Add to Wishlist</span>
                  </div></a>
                <div class="top-content bag">
                  <h5><a href="stat/single.html">Symbolic Bag</a></h5>
                  <div class="white">
                    <a href="stat/single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
                    <p class="dollar"><span class="in-dollar">$</span><span>4</span><span>0</span></p>
                    <div class="clearfix"></div>
                  </div>
                </div>
              </div>
            </li>
            <li><div class="col-md men">
              <a href="stat/single.html" class="compare-in "><img  src="${ctx}/front-res/images/pi7.jpg" alt="" />
                <div class="compare in-compare">
                  <span>Add to Compare</span>
                  <span>Add to Wishlist</span>
                </div></a>
              <div class="top-content bag">
                <h5><a href="stat/single.html">Onesie</a></h5>
                <div class="white">
                  <a href="stat/single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
                  <p class="dollar"><span class="in-dollar">$</span><span>6</span><span>0</span></p>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div></li>

          </ul>
          <script type="text/javascript">
            $(window).load(function() {
              $("#flexiselDemo2").flexisel({
                visibleItems: 4,
                animationSpeed: 1000,
                autoPlay: true,
                autoPlaySpeed: 3000,
                pauseOnHover: true,
                enableResponsiveBreakpoints: true,
                responsiveBreakpoints: {
                  portrait: {
                    changePoint:480,
                    visibleItems: 1
                  },
                  landscape: {
                    changePoint:640,
                    visibleItems: 2
                  },
                  tablet: {
                    changePoint:768,
                    visibleItems: 3
                  }
                }
              });

            });
          </script>
        </div>
      </div>
    </div>
  </div>
<%--<%@include file="footer.jsp"%>--%>
</body>
</html>
