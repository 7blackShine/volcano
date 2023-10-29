<%--
  Created by IntelliJ IDEA.
  User: 50438
  Date: 2022/11/18
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>火山屋台|日式料理</title>
  <link rel="stylesheet" href="./css/common.css">
  <link rel="stylesheet" href="./css/menuCommon.css">
  <link rel="stylesheet" href="./css/menu.css">
</head>
<body>
<!-- 菜单模块 -->
<div class="menu">
  <!-- top模块 -->
  <div class="top">
    <p class="bgc_text">Menu</p>
    <p class="bgc_text_zh">菜单</p>
    <img class="bgc_image" src="./img/bgcimage.jpg" alt="">
    <div class="bgc_mask"></div>
    <div class="index_link"><a href="">TOP / </a><p>お品書き</p></div>
  </div>
  <!-- 菜品模块 -->
  <div class="content">
    <div class="content_box">
      <div class="content_nav">在线菜单</div>
      <div class="content_menu_box">
        <c:if test="${sessionScope.status=='business'}">
          <c:forEach items="${requestScope.foods}" var="food">
            <a class="content_menu" href="/echoQueryServlet?id=${food.fid}">
              <img src="foodpic/${food.fimg}" alt="">
              <p class="menu_name">${food.fname}</p>
              <p class="menu_price">￥${food.fprice}</p>
            </a>
          </c:forEach>
        </c:if>
        <c:if test="${sessionScope.status=='consumer'}">
          <c:forEach items="${requestScope.foods}" var="food">
            <div class="content_menu">
              <img src="foodpic/${food.fimg}" alt="">
              <p class="menu_name">${food.fname}</p>
              <p class="menu_price">￥${food.fprice}</p>
            </div>
          </c:forEach>
        </c:if>
      </div>
      <div class="content_decorate"></div>
    </div>
  </div>
  <div class="bottom">
    <img src="./img/logo3.png" alt="">
    <a href="navigation.jsp" class="back"></a>
    <a href="navigation.jsp" class="back_text">返回</a>
  </div>
  <!-- bottom脚本 -->
  <script>
    var btn = document.querySelector('.back_text');
    var box = document.querySelector('.back');

    btn.onmouseover = function(){
      box.style.animation = "back_ani 0.3s forwards";
    }
    btn.onmouseout = function(){
      box.style.animation = "back_ani2 0.3s forwards";
    }
  </script>
</div>

</body>
</html>
