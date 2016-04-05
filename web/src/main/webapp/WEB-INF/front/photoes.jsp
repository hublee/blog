<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/2/25 0025
  Time: 下午 5:51:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ include file="../public/taglib.jsp"%>
<html>
<head>
  <meta charset="utf-8">
  <title>相册</title>
  <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Ultra">
  <link rel="stylesheet" type="text/css" href="${ctx}/js/vegas/jquery.vegas.css">
  <link rel="stylesheet" type="text/css" href="${ctx}/js/jscrollpane/jquery.jscrollpane.css">
  <link rel="stylesheet" type="text/css" href="${ctx}/css/styles_photoes.css">
  <script src="${ctx}/js/jquery-1.8.0.min.js"></script>
  <script src="${ctx}/js/jquery.easing.js"></script>
  <script src="${ctx}/js/vegas/jquery.vegas.js"></script>
  <script src="${ctx}/js/jscrollpane/jquery.jscrollpane.min.js"></script>
  <script src="${ctx}/js/buzz/buzz.js"></script>
  <script src="${ctx}/js/gallery.js"></script>

  <script type="text/javascript">

    loadImages();
    $(function(){
//            loadImages();
    })

    function loadImages(){
      $.ajax({
        type:'post',
        url:'/app/photo/list',
        dataType:'json',
        success:function(data){
          var imgs = data.data;
          var htm = "";
          for(var i in imgs){
            htm += '<li><a href="'+imgs[i].pic+'"><img src="'+imgs[i].icon+'" title="'+imgs[i].title+'" data-valign="top"></a></li>';
          }
          $("#imageUl").html(htm);
        },
        error:function(err){
          alert("加载图片列表失败");
        }
      });
    }


  </script>

</head>

<body>
<div id="flash"></div>
<div id="title">
  <h1>hulib</h1>
  <p>Picture by hlib</p>
</div>
<div id="thumbnails">
  <ul id="imageUl">
    <!--<li><a href="../images/01.jpg"><img src="../images/01b.jpg" title="New York moving" data-valign="top"></a></li>
    <li><a href="../images/03.jpg"><img src="../images/03b.jpg" title="Street dancers"></a></li>
    <li><a href="../images/05.jpg"><img src="../images/05b.jpg" title="NBC Studio"></a></li>
    <li><a href="../images/08.jpg"><img src="../images/08b.jpg" title="New York Promenade" data-valign="top"></a></li>-->
  </ul>
  <div id="pointer"></div>
</div>
<div id="pause"><a href="#">Paused</a></div>
<div id="volume" class="all"><a href="#">Sounds</a></div>
</body>
</html>