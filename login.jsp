<%--
  Created by IntelliJ IDEA.
  User: 50438
  Date: 2022/11/18
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>火山屋台|日式料理</title>
  <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="login">
  <div class="login_box">
    <form action="/loginServlet">
      <div class="status_box">
        <div class="status_choice"></div>
        <div class="status1"><p>用户</p></div>
        <div class="status2"><p>商家</p></div>
        <input type="hidden" name="method" value="login">
        <input class="radio1" type="radio" name="loginRadio" value="consumer" checked="checked">
        <input class="radio2" type="radio" name="loginRadio" value="business">
      </div>
      <!-- 用户身份选择JS -->
      <script>
        var radiobtn1 = document.querySelector('.radio1');
        var radiobtn2 = document.querySelector('.radio2');
        var status1 = document.querySelector('.status1');
        var status2 = document.querySelector('.status2');
        var status_box = document.querySelector('.status_choice');

        radiobtn2.onclick = function(){
          status_box.style.animation = "radio_ani 1s forwards";
          status1.style.animation = "status_ani2 1s forwards";
          status2.style.animation = "status_ani 1s forwards";
        }
        radiobtn1.onclick = function(){
          status_box.style.animation = "radio_ani2 1s forwards";
          status1.style.animation = "status_ani 1s forwards";
          status2.style.animation = "status_ani2 1s forwards";
        }
      </script>
      <%--登录--%>
      <p class="font_style font_position1">用户名</p>
      <input class="input_style input_position1" type="text" name="uname" placeholder="在此输入">
      <p class="font_style font_position2">密&nbsp;&nbsp;&nbsp;&nbsp;码</p>
      <input class="input_style input_position2" type="password" name="upwd" placeholder="在此输入">
      <div class="submit_box ">登录</div>
      <input class="submit " type="submit" value="">
    </form>
  </div>
  <div class="register_box">
    <form action="/loginServlet">
      <div class="status_box">
        <div class="status_choice2"></div>
        <div class="status3"><p>用户</p></div>
        <div class="status4"><p>商家</p></div>
        <input type="hidden" name="method" value="register">
        <input class="radio3" type="radio" value="consumer" name="registerRadio" checked="checked">
        <input class="radio4" type="radio" value="business" name="registerRadio">
      </div>
      <!-- 用户身份选择JS -->
      <script>
        var radiobtn3 = document.querySelector('.radio3');
        var radiobtn4 = document.querySelector('.radio4');
        var status3 = document.querySelector('.status3');
        var status4 = document.querySelector('.status4');
        var status_box2 = document.querySelector('.status_choice2');

        radiobtn4.onclick = function(){
          status_box2.style.animation = "radio_ani 1s forwards";
          status3.style.animation = "status_ani2 1s forwards";
          status4.style.animation = "status_ani 1s forwards";
        }
        radiobtn3.onclick = function(){
          status_box2.style.animation = "radio_ani2 1s forwards";
          status3.style.animation = "status_ani 1s forwards";
          status4.style.animation = "status_ani2 1s forwards";
        }
      </script>
      <%--注册--%>
      <p class="font_style font_position1">用户名</p>
      <input class="input_style input_position1" type="text" name="uname" placeholder="在此输入">
      <p class="font_style font_position2">密&nbsp;&nbsp;&nbsp;&nbsp;码</p>
      <input class="input_style input_position2" type="password" name="upwd" placeholder="在此输入">
      <div class="submit_box submit_btn2">注册</div>
      <input class="submit submit_ani2" type="submit" value="">
    </form>
  </div>
  <!-- 登录or注册选择 -->
  <div class="motion_box">
    <a href="navigation.jsp"><img src="./img/logo2.png" alt=""></a>
    <p href="" class="motion_register motion_p">注册</p>
    <p href="" class="motion_login motion_p">登录</p>
  </div>
  <script>
    var motion_register = document.querySelector('.motion_register');
    var motion_login = document.querySelector('.motion_login');
    var motion_box = document.querySelector('.motion_box');

    motion_register.onclick = function(){
      motion_box.style.animation = "motion_box_ani 1s forwards";
      motion_register.style.animation = "motion_box_ani3 1s forwards";
      motion_login.style.animation = "motion_box_ani4 1s forwards";
    }
    motion_login.onclick = function(){
      motion_box.style.animation = "motion_box_ani2 1s forwards";
      motion_login.style.animation = "motion_box_ani3 1s forwards";
      motion_register.style.animation = "motion_box_ani4 1s forwards";
    }

  </script>
</div>

</body>
</html>
