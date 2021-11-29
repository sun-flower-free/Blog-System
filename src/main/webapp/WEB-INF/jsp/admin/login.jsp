<!--
* @Author: YH
* @Date: 2021-11-28 10:03:23
* LastEditTime: 2021-11-28 10:53:42
* LastEditors: YuHan
* @Description: 别卷了，该交作业了
* FilePath: login.html
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog Login</title>
    <link rel="shortcut icon" type="image/x-icon" href="/img/web-icon.png" media="screen" />
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/login.css">
    <script src="static/js/jquery-3.2.1.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>

</head>
<body style="background-image:url(static/images/background.jpg)">
<c:if test="${!empty error}">
    <script>
        alert("${error}");
        window.location.href="login.html";
    </script>
</c:if>
    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <div class="in-box" >
                <h2>注册账号(暂时关闭)</h2>
                <input type="text" placeholder="Name" id="new-name"/>
                <input type="email" placeholder="Email" id="new-email"/>
                <input type="password" placeholder="Password" id="new-password"/>
                <button id="signUpButton">点击注册</button>
                <p style="text-align: right;color: red;" id="info_register"></p>
            </div>
        </div>
        <div class="form-container sign-in-container">
            <div class="in-box" >
                <h1>欢迎登录</h1>
                <input type="name" placeholder="Account" id="account"/>
                <input type="password" placeholder="Password" id="passwd"/>
                <!-- <a href="#">Forgot your password?</a> -->
                <button id="signInButton">登录</button>
                <p style="text-align: right;color: red;" id="info"></p>
            </div>
        </div>
        <div class="overlay-container">
            <div class="overlay" style="background-image:url(static/images/background.jpg)">
                <div class="overlay-panel overlay-left">
                    <h1>Welcome Back!</h1>
                    <p>If you want to change something for me please login with your personal info</p>
                    <button class="ghost" id="signIn">已有账号？点击登录</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Hello, Friend!</h1>
                    <p>Enter your personal details and start journey with me</p>
                    <button class="ghost" id="signUp">没有账号？点击注册</button>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p>
            Created with <i class="fa fa-heart"></i> by
            <a target="_blank" href="/">ZhangYH</a>
            - Read how I created this and how you can join the challenge
            <a target="_blank" href="https://gitee.com/zyh007/">here</a>.
        </p>
    </footer>

    <script>
        const signUpButton = document.getElementById('signUp');
        const signInButton = document.getElementById('signIn');
        const container = document.getElementById('container');

        signUpButton.addEventListener('click', () => {
            container.classList.add("right-panel-active");
        });

        signInButton.addEventListener('click', () => {
            container.classList.remove("right-panel-active");
        });
    </script>

    <script>
        // $("#adminId").keyup(
        //     function () {
        //         if(isNaN($("#adminId").val())){
        //             $("#info").text("提示");
        //         }
        //         else {
        //             $("#info").text("000");
        //         }
        //     }
        // )
        $("#signInButton").click(function () {
            const account = $("#account").val();
            const password = $("#passwd").val();
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
        $("#signUpButton").click(
            /*
            function () {
            const name = $("#new-name").val();
            const email = $("#new-email").val();
            const password = $("#new-password").val();
            if(name === '' && password === ''){
                $("#info").text("账号和密码不能为空");
            }
            else if (name === ''){
                $("#info").text("账号不能为空");
            }
            else if(password === ''){
                $("#info").text("密码不能为空");
            }
            else if(password.length < 8){
                $("#info").text("密码长度太短，请重新输入");
            }
            else {
                $.ajax({
                    type: "POST",
                    url: "/api/registerCheck",
                    data: {
                        account: name ,
                        email: email,
                        password: password
                    },
                    dataType: "json",
                    success: function(data) {
                        if(data.stateCode.trim() === "0") {
                            $("#info").text("用户已存在");
                        }
                        else if(data.stateCode.trim() === "1"){
                            $("#info").text("注册成功，跳转中...");
                            window.location.href="/admin/main";
                        }
                    }
                });
            }
        }
        */
            function () {
                $("#info_register").text("亲，暂时不让您进系统哦~");
            }
        )
    </script>

</body>
</html>
<%--

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
</div>
--%>
