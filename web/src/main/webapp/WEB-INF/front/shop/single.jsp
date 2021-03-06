<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/2/25 0025
  Time: 下午 5:06:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<%@include file="index.jsp"%>
<body>
<%@include file="top.jsp"%>
  <!---->
  <div class="container">
    <div class="single">
      <div class="col-md-9 top-in-single">
        <div class="col-md-5 single-top">
          <!-- start product_slider -->
          <div class="flexslider">
            <!-- FlexSlider -->
            <script src="../js/imagezoom.js"></script>
            <script defer src="../js/jquery.flexslider.js"></script>
            <link rel="stylesheet" href="../css/flexslider.css" type="text/css" media="screen" />

            <script>
              // Can also be used with $(document).ready()
              $(window).load(function() {
                $('.flexslider').flexslider({
                  animation: "slide",
                  controlNav: "thumbnails"
                });
              });
            </script>
            <!-- //FlexSlider-->

            <ul class="slides">
              <li data-thumb="images/si1.jpg">
                <div class="thumb-image"> <img src="../images/si1.jpg" data-imagezoom="true" class="img-responsive"> </div>
              </li>
              <li data-thumb="images/si2.jpg">
                <div class="thumb-image"> <img src="../images/si2.jpg" data-imagezoom="true" class="img-responsive"> </div>
              </li>
              <li data-thumb="images/si.jpg">
                <div class="thumb-image"> <img src="../images/si.jpg" data-imagezoom="true" class="img-responsive"> </div>
              </li>
              <li data-thumb="images/si1.jpg">
                <div class="thumb-image"> <img src="../images/si1.jpg" data-imagezoom="true" class="img-responsive"> </div>
              </li>
            </ul>
            <div class="clearfix"></div>
          </div>
          <!-- end product_slider -->

        </div>
        <div class="col-md-7 single-top-in">
          <div class="single-para">
            <h4>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h4>
            <div class="para-grid">
              <span  class="add-to">$32.8</span>
              <a href="#" class="hvr-shutter-in-vertical cart-to">Add to Cart</a>
              <div class="clearfix"></div>
            </div>
            <h5>100 items in stock</h5>
            <div class="available">
              <h6>Available Options :</h6>
              <ul>
                <li>Color:
                  <select>
                    <option>Silver</option>
                    <option>Black</option>
                    <option>Dark Black</option>
                    <option>Red</option>
                  </select></li>
                <li>Size:<select>
                  <option>Large</option>
                  <option>Medium</option>
                  <option>small</option>
                  <option>Large</option>
                  <option>small</option>
                </select></li>
                <li>Quality:<select>
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select></li>
              </ul>
            </div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>

            <a href="#" class="hvr-shutter-in-vertical ">More details</a>

          </div>
        </div>
        <div class="clearfix"> </div>
        <div class="content-top-in">
          <div class="col-md-4 top-single">
            <div class="col-md">
              <img  src="../images/pic8.jpg" alt="" />
              <div class="top-content">
                <h5>Mascot Kitty - White</h5>
                <div class="white">
                  <a href="#" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
                  <p class="dollar"><span class="in-dollar">$</span><span>2</span><span>0</span></p>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 top-single">
            <div class="col-md">
              <img  src="../images/pic9.jpg" alt="" />
              <div class="top-content">
                <h5>Mascot Kitty - White</h5>
                <div class="white">
                  <a href="#" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
                  <p class="dollar"><span class="in-dollar">$</span><span>2</span><span>0</span></p>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 top-single-in">
            <div class="col-md">
              <img  src="../images/pic10.jpg" alt="" />
              <div class="top-content">
                <h5>Mascot Kitty - White</h5>
                <div class="white">
                  <a href="#" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
                  <p class="dollar"><span class="in-dollar">$</span><span>2</span><span>0</span></p>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>
          </div>

          <div class="clearfix"></div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="single-bottom">
          <h4>Categories</h4>
          <ul>
            <li><a href="#"><i> </i>Fusce feugiat</a></li>
            <li><a href="#"><i> </i>Mascot Kitty</a></li>
            <li><a href="#"><i> </i>Fusce feugiat</a></li>
            <li><a href="#"><i> </i>Mascot Kitty</a></li>
            <li><a href="#"><i> </i>Fusce feugiat</a></li>
          </ul>
        </div>
        <div class="single-bottom">
          <h4>Product Categories</h4>
          <ul>
            <li><a href="#"><i> </i>feugiat(5)</a></li>
            <li><a href="#"><i> </i>Fusce (4)</a></li>
            <li><a href="#"><i> </i> feugiat (4)</a></li>
            <li><a href="#"><i> </i>Fusce (4)</a></li>
            <li><a href="#"><i> </i> feugiat(2)</a></li>
          </ul>
        </div>
        <div class="single-bottom">
          <h4>Product Categories</h4>
          <div class="product">
            <img class="img-responsive fashion" src="../images/st1.jpg" alt="">
            <div class="grid-product">
              <a href="#" class="elit">Consectetuer adipiscing elit</a>
              <span class="price price-in"><small>$500.00</small> $400.00</span>
            </div>
            <div class="clearfix"> </div>
          </div>
          <div class="product">
            <img class="img-responsive fashion" src="../images/st2.jpg" alt="">
            <div class="grid-product">
              <a href="#" class="elit">Consectetuer adipiscing elit</a>
              <span class="price price-in"><small>$500.00</small> $400.00</span>
            </div>
            <div class="clearfix"> </div>
          </div>
          <div class="product">
            <img class="img-responsive fashion" src="../images/st3.jpg" alt="">
            <div class="grid-product">
              <a href="#" class="elit">Consectetuer adipiscing elit</a>
              <span class="price price-in"><small>$500.00</small> $400.00</span>
            </div>
            <div class="clearfix"> </div>
          </div>
        </div>
      </div>
      <div class="clearfix"> </div>
    </div>
  </div>

<%@include file="footer.jsp"%>
</body>
</html>
