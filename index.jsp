<%--
  Created by IntelliJ IDEA.
  User: 50438
  Date: 2022/11/18
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>火山屋台|日式料理</title>
    <link rel="stylesheet" href="css/index.css">
  </head>
  <body>
  <div class="CardBox">
    <div class="Card1">
      <!-- 视频背景模块 -->
      <video class="videoBox" src="video/top.mp4" autoplay loop muted ></video>
      <!-- 蒙版模块 -->
      <!-- <div class="mask"></div> -->
      <div class="title">
        <img src="img/一.png" alt="" class="title_ani1">
        <img src="img/壶.png" alt="" class="title_ani2">
        <img src="img/涉.png" alt="" class="title_ani3">
        <img src="img/世.png" alt="" class="title_ani4">
        <img src="img/点.png" alt="" class="title_ani5">
        <img src="img/一.png" alt="" class="title_ani6">
        <img src="img/入.png" alt="" class="title_ani7">
        <img src="img/忘.png" alt="" class="title_ani8">
        <img src="img/归.png" alt="" class="title_ani9">
      </div>
      <div class="nav">
        <img class="nav_logo" src="./img/logo2.png" alt=""></img>
        <a class="" href="navigation.jsp">
          <div class="nav_enroll"></div>
          <p class="nav_enroll_font">进入</p>
        </a>
        <script>
          var btn = document.querySelector('.nav_enroll');
          var text = document.querySelector('.nav_enroll_font');

          text.onmouseover = function(){
            btn.style.animation = "enroll_ani 0.3s forwards";
          }
          text.onmouseout = function(){
            btn.style.animation = "enroll_ani2 0.3s forwards";
          }


        </script>
      </div>
    </div>
    <!-- Card2模块 -->
    <div class="Card2">
      <img class="Card2_logo" src="./img/logo.png" alt="">
    </div>
  </div>
  </body>
</html>
