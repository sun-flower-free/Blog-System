
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>博客管理系统</title>
    <link rel="shortcut icon" type="image/x-icon" href="/img/web-icon.png" media="screen" />
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>

    <style>
        #myCarousel{
            margin-left: 2%;
            width: 900px;
            height: 80%;
            float: left;
            z-index: 999;
            display: inline;
        }
        #login{
            float: left;
            height: 250px;
            width: 330px;
            margin-left: 6%;
            margin-top: 9%;
            display: inline;
            z-index: 999;
        }
        body{
            padding:0;
            margin:0;
        }
    </style>
    <script>
        $(function(){
            $('#myCarousel').carousel({
                interval: 2000
            })
        });
    </script>
</head>
<body>
<c:if test="${!empty error}">
    <script>
        alert("${error}");
        window.location.href="login.html";
    </script>
</c:if>
<h2 style="text-align: center;font-family: 'Adobe 楷体 Std R';color: black">博客管理系统</h2>
<div style="float:right;" id="github_iframe"></div>
<!--inse here-->
<div id="myCarousel" class="carousel slide">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="/img/82839-106.jpg" alt="第一张">
        </div>
        <div class="item">
            <img src="/img/105905-106.jpg" alt="第二张">
        </div>
        <div class="item">
            <img src="/img/296494-106.jpg" alt="第三张">
        </div>

    </div>
    <a class="carousel-control left" href="#myCarousel"
       data-slide="prev">&lsaquo;
    </a>
    <a class="carousel-control right" href="#myCarousel"
       data-slide="next">&rsaquo;
    </a>
</div>
<div  id="login">
    <div class="form-inline"  >

        <div class="input-group">
            <span class="input-group-addon">账号</span>
            <input type="text" class="form-control" name="id" id="account">
        </div><br/><br/>
        <div class="input-group">
            <span class="input-group-addon">密码</span>
            <input type="password" class="form-control" name="passwd" id="passwd">
        </div>
        <br/>
        <p style="text-align: right;color: red;position: absolute" id="info"></p>

        <br/>
        <button id="signInButton"  class="btn btn-primary">登陆
        </button>

    </div>
    <script>
        // $("#adminId").keyup(
        //     function () {
        //         if(isNaN($("#adminId").val())){
        //             $("#info").text("提示:账号只能为数字");
        //         }
        //         else {
        //             $("#info").text("");
        //         }
        //     }
        // )
        $("#signInButton").click(function () {
            const account = $("#account").val();
            const password = $("#passwd").val();
            console.log(account);
            console.log(password);
            if(account === '' && password === ''){
                $("#info").text("账号和密码不能为空");
            }
            else if (account === ''){
                $("#info").text("账号不能为空");
            }
            else if(password === ''){
                $("#info").text("密码不能为空");
            }
            // else if(isNaN($("#adminId").val())){
            //     $("#info").text("提示:账号必须为数字");
            // }
            else {
                $.ajax({
                    type: "POST",
                    url: "/api/loginCheck",
                    data: {
                        account: account ,
                        password: password
                    },
                    dataType: "json",
                    success: function(data) {
                        if(data.stateCode.trim() === "0") {
                            $("#info").text("用户不存在");
                        } else if(data.stateCode.trim() === "1") {
                            $("#info").text("密码错误");
                        } else if(data.stateCode.trim() === "2"){
                            $("#info").text("登陆成功，跳转中...");
                            window.location.href="/admin/main";
                        }
                    }
                });
            }
        })

    </script>

</div>

</body>
</html>