<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/2/25 0025
  Time: 下午 5:02:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<%@include file="index.jsp"%>
<body>
  <%@include file="top.jsp"%>
  <div class="container">
    <div class="products">
      <h2 class=" products-in">商品列表</h2>
      <div class=" top-products">
        <div class="col-md-3 md-col">
          <div class="col-md">
            <a href="stat/single.html" class="compare-in"><img  src="images/pic.jpg" alt="" />
            </a>
            <div class="top-content">
              <h5><a href="stat/single.html">商品标题</a></h5>
              <div class="white">
                <a href="stat/single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">加入到购物车</a>
                <p class="dollar"><span class="in-dollar">¥</span><span>2</span><span>0</span></p>
                <div class="clearfix"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-3 md-col">
          <div class="col-md">
            <a href="stat/single.html" class="compare-in"><img  src="images/pic1.jpg" alt="" />
            </a>
            <div class="top-content">
              <h5><a href="stat/single.html" >商品标题</a></h5>
              <div class="white">
                <a href="javascript:alert('加入购物车');" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">加入到购物车</a>
                <p class="dollar"><span class="in-dollar">¥</span><span>6</span><span>0</span></p>
                <div class="clearfix"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
  </div>
<%@include file="footer.jsp"%>
</body>
</html>
