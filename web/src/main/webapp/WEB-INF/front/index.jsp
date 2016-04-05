<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/2/23 0023
  Time: 上午 10:29:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ include file="../public/taglib.jsp"%>
<html>
<head>
  <title>首页</title>
  <link rel="stylesheet" href="${ctx}/css/reset.css" type="text/css" media="all">
  <link rel="stylesheet" href="${ctx}/css/layout.css" type="text/css" media="all">
  <link rel="stylesheet" href="${ctx}/css/style.css" type="text/css" media="all">
  <link rel="stylesheet" href="${ctx}/css/prettyPhoto.css" type="text/css" media="all">
  <script type="text/javascript" src="${ctx}/js/jquery.min.js" ></script>
  <script type="text/javascript" src="${ctx}/js/mobilyblocks.js"></script>
  <script type="text/javascript" src="${ctx}/js/script.js"></script>
  <script src="${ctx}/js/jquery.transform-0.9.3.min.js"></script>
  <script src="${ctx}/js/superfish.js"></script>
  <script type="text/javascript" src="${ctx}/js/atooltip.jquery.js"></script>
  <script type="text/javascript" src="${ctx}/js/pages.js"></script>
  <script type="text/javascript" src="${ctx}/js/jScrollPane.js"></script>
  <script type="text/javascript" src="${ctx}/js/jquery.mousewheel.js"></script>
  <script type="text/javascript" src="${ctx}/js/contact-form.js"></script>
  <script type="text/javascript" src="${ctx}/js/jquery.prettyPhoto.js"></script>
</head>
<body>
<div class="spinner"><div><div></div></div></div>
<div class="extra">
  <div class="main">

    <!--content -->
    <section id="content">
      <ul>
        <li id="page_0">
          <div class="inner">
            <nav class="menu">
              <ul id="menu" class="reset">
                <li id="nav1"><a href="${ctx}/front/photoes" target="_blank"><img src="${ctx}/images/nav1.png" alt="" class="img"><img src="${ctx}/images/nav1_active.png" alt="" class="img_act"></a></li>
                <li id="nav7"><a href="#page_0"><img src="${ctx}/images/nav7.png" alt="" class="img"><img src="${ctx}/images/nav7_active.png" alt="" class="img_act"></a></li>
                <li id="nav6"><a href="#page_0"><img src="${ctx}/images/nav6.png" alt="" class="img"><img src="${ctx}/images/nav6_active.png" alt="" class="img_act"></a></li>
                <li id="nav5"><a href="${ctx}/front/shop/index/show"><img src="${ctx}/images/nav5.png" alt="" class="img"><img src="${ctx}/images/nav5_active.png" alt="" class="img_act"></a></li>
                <li id="nav4"><a href="#page_0"><img src="${ctx}/images/nav4.png" alt="" class="img"><img src="${ctx}/images/nav4_active.png" alt="" class="img_act"></a></li>
                <li id="nav3"><a href="#page_0"><img src="${ctx}/images/nav3.png" alt="" class="img"><img src="${ctx}/images/nav3_active.png" alt="" class="img_act"></a></li>
                <li id="nav2"><a href="#page_0"><img src="${ctx}/images/nav2.png" alt="" class="img"><img src="${ctx}/images/nav2_active.png" alt="" class="img_act"></a></li>
              </ul>
            </nav>
            <div class="menu_box">
              <div class="images">
                <span class="nav1"></span>
                <span class="nav2"></span>
                <span class="nav3"></span>
                <span class="nav4"></span>
                <span class="nav5"></span>
                <span class="nav6"></span>
                <span class="nav7"></span>
                <span class="nav8"></span>
                <span class="nav9"></span>
              </div>
              <div class="tittles">
                <div class="nav1">
                  <h2>相册 &nbsp;</h2>
                </div>
                <div class="nav2">
                  <h2>音乐 &nbsp;</h2>
                </div>
                <div class="nav3">
                  <h2>学习 </h2>
                </div>
                <div class="nav4">
                  <h2>日记 &nbsp;</h2>
                </div>
                <div class="nav5">
                  <h2>商城 &nbsp;</h2>
                </div>
                <div class="nav6">
                  <h2>关于 &nbsp;</h2>
                </div>
                <div class="nav7">
                  <h2>Privacy &nbsp;</h2>
                </div>
                <%--<div class="nav7">
                  <h2>Menu 7 &nbsp;</h2>
                </div>
                <div class="nav8">
                  <h2>Privacy &nbsp;</h2>
                </div>
                <div class="nav9">
                  <h2>Read more &nbsp;</h2>
                </div>--%>
              </div>
            </div>
          </div>
        </li>
      </ul>
    </section>
    <!--content end-->
  </div>
  <div class="block"></div>
</div>
<div class="body1">
  <div class="main">
  </div>
</div>
<script>
  $(window).load(function() {
    $('.spinner').hide();
    $('body').css({overflow:'inherit'});
  })
</script>
<!--coded by gfxnav-->
</body>
</html>
