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
  <link rel="stylesheet" href="css/navigation.css">
</head>
<body>
<div class="Navigation">
  <div class="Nav_bgc">
  </div>
  <div class="Nav_box">
    <a class="Nav_index Nav_btn" href="index.jsp">
      <p class="bgc_text">首页</p>
    </a>
    <a class="Nav_menu Nav_btn" href="/showFoodServlet">
      <p class="bgc_text">菜品</p>
    </a>
    <%
      String status = session.getAttribute("status").toString();
    %>
    <c:if test="${sessionScope.status=='consumer'}">
      <a class="Nav_about Nav_btn" href="about.html">
        <p class="bgc_text">关于</p>
      </a>
    </c:if>

    <c:if test="${sessionScope.status=='business'}">
      <a class="Nav_about Nav_btn" href="addFood.jsp">
        <p class="bgc_text">添加</p>
      </a>
    </c:if>

    <a class="Nav_login Nav_btn" href="/exitServlet">
      <p class="bgc_text">退出</p>
    </a>
  </div>
  <script>
    var btns = document.querySelectorAll('.bgc_text');
    var boxs = document.querySelectorAll('.Nav_btn');

    for(var i = 0; i < btns.length; i++){
      btns[i].setAttribute('index', i);
      btns[i].onmouseover = function(){
        var index = this.getAttribute('index');
        boxs[index].style.opacity= "1";
        boxs[index].style.animation = "nav_btn_ani4 1s forwards";
        btns[index].style.animation = "nav_btn_ani6 1s forwards";
        for(var j = 0; j < btns.length; j++){
          if(j!=index){
            boxs[j].style.opacity= "1";
            boxs[j].style.animation = "nav_btn_ani1 1s forwards";
          }
        }
      }
    }
    for(var i = 0; i < btns.length; i++){
      btns[i].setAttribute('index', i);
      btns[i].onmouseout = function(){
        var index = this.getAttribute('index');
        boxs[index].style.animation = "nav_btn_ani5 1s forwards";
        btns[index].style.animation = "nav_btn_ani7 1s forwards";
        for(var j = 0; j < btns.length; j++){
          if(j!=index){
            boxs[j].style.opacity= "0";
            boxs[j].style.animation = "nav_btn_ani2 1s forwards";
          }
        }
      }
    }
  </script>
</div>
</body>
</html>
