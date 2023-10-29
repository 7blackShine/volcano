<%--
  Created by IntelliJ IDEA.
  User: 50438
  Date: 2022/11/19
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>火山屋台|日式料理</title>
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/menuCommon.css">
    <link rel="stylesheet" href="./css/updateFood.css">
</head>
<!-- 菜单模块 -->
<div class="menu">
    <!-- top模块 -->
    <div class="top">
        <p class="bgc_text">UpdateFood</p>
        <p class="bgc_text_zh">更新菜品</p>
        <div class="food_box">
            <form action="/foodServlet?fid=${echofood.fid}" method="post" enctype="multipart/form-data">
                <img id="menu_pic" alt="" src="foodpic/${echofood.fimg}">
                <!-- 图片上传input已隐藏 -->
                <input type="file" id="file" name="upload_image"
                       accept="image/gif, image/jpeg, image/png, image/jpg">
                <div class="upload_btn">图片上传</div>
                <p ></p>
                <input class="foodName  food_input_style" type="text" placeholder="请输入菜品名称" value="${echofood.fname}" name="fname">
                <input class="foodPrice food_input_style" type="text" placeholder="请输入菜品价格" value="${echofood.fprice}" name="fprice">
                <input class="method" type="hidden" name="method" value="">
                <input class="food_btn food_update" type="submit" value="更新">
                <input class="food_btn food_del" type="submit" value="删除">

                <script>
                    var food_update = document.querySelector('.food_update');
                    var food_del = document.querySelector('.food_del');
                    var food_method = document.querySelector('.method');
                    food_update.onclick = function (){
                        food_method.value = "updateFood";
                    }
                    food_del.onclick = function (){
                        food_method.value = "deleteFood";
                    }



                </script>
                <!-- input file样式 -->
                <script>
                    var upload_btn = document.querySelector(".upload_btn");
                    var upload_image = document.querySelector("#file");

                    upload_btn.onclick = function(){
                        console.log("1111");
                        upload_image.click();
                    }

                </script>
                <!-- 上传图片更新 -->
                <script type="text/javascript">
                    let fileInput = document.getElementById('file');
                    let preview = document.getElementById('menu_pic');
                    // 监听change事件:
                    fileInput.addEventListener('change', function () {
                        // 清除背景图片:
                        preview.style.backgroundImage = '';
                        let file = fileInput.files[0];
                        let size = file.size;
                        //读取文件:
                        let reader = new FileReader();
                        reader.onload = function (e) {
                            let data = e.target.result;
                            console.log(preview, 'a标签')
                            preview.src = data
                        };
                        // 以DataURL的形式读取文件:
                        reader.readAsDataURL(file);

                    });
                </script>
            </form>
        </div>
    </div>
    <div class="bottom">
        <img src="./img/logo3.png" alt="">
        <a href="" class="back"></a>
        <a href="" class="back_text">返回</a>
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
