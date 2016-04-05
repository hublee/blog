<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/2/25 0025
  Time: 下午 4:59:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<!---->
<div class="footer">
  <div class="footer-middle">
    <div class="container">
      <div class="footer-middle-in">
        <h6>关于我们</h6>
        <p>XX网络科技有限公司</p>
      </div>
      <div class="footer-middle-in">
        <h6>客服服务</h6>
        <ul>
          <li><a href="stat/contact.html">联系我们</a></li>
          <li><a href="#">反馈</a></li>
          <li><a href="#">网站地图</a></li>
        </ul>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
  <p class="footer-class">Copyright &copy; 2015.Company name All rights reserved.</p>
  <script type="text/javascript">
    $(document).ready(function() {
      /*
       var defaults = {
       containerID: 'toTop', // fading element id
       containerHoverID: 'toTopHover', // fading element hover id
       scrollSpeed: 1200,
       easingType: 'linear'
       };
       */

      $().UItoTop({ easingType: 'easeOutQuart' });

    });
  </script>
  <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</div>