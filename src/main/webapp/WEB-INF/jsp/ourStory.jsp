<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--
* Author: YuHan
* Date: 2021-10-22 20:27:19
* LastEditTime: 2021-11-28 16:59:05
* LastEditors: YuHan
* Description: 别看了，别看了，，
* FilePath: \Desktop\home-master\ourStory.html
*
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=5">
    <title>菜菜张 caicaizhang</title>
    <meta name="description" content="00后无为青年，后端开发者（学习者），略懂前端, 学生，实习，缺乏社会的毒打">
    <meta name="keywords" content="Java,Spring,个人博客，博客">
    <meta name="format-detection" content="telephone=no">
    <link rel="shortcut icon" type="image/x-icon" href="static/images/icon.png" media="screen" />
    <link rel="stylesheet" href="static/css/pic_style.css">
    <script type="text/javascript" src="static/js/Vanilla-tilt.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

    <script type="text/javascript">
        if (!!window.ActiveXObject || "ActiveXObject" in window) { //is IE?
            alert('朋友，上古浏览器不支持呢~');
        }
    </script>
</head>
<body>
<!-- Nav -->
<nav id="nav" >
    <ul class="skel-panels-fixed">
        <li><a href="/">Home</a></li>
        <li><a href="blog">Blog</a></li>
        <li class="current_page_item"><a href="ourStory">Our story</a></li>
        <li><a href="about">About me</a></li>
    </ul>
</nav>
<div class="pic_container">
    <div class="pic_card" style="background-image:url(static/images/us/04.jpg)">
        <div class="pic_content">
            <h2>01</h2>
            <h3>Pic One</h3>
            <p>
                为什么不在春天放一把风筝呢？坐在春天刚刚冒出绿色的草地上，吹着揉揉的春风，享受着春日温馨的阳光真的很舒适。
            </p>
<%--            <a href="#">Read More</a>--%>
        </div>
    </div>
    <div class="pic_card" style="background-image:url(static/images/us/02.jpg)">
        <div class="pic_content">
            <h2>02</h2>
            <h3>Pic Two</h3>
            <p>
                金媒晚会我们第一次组合排练哦！那时我们刚在一起也很温馨，一切都在往好的方向发展呢。
            </p>
<%--            <a href="#">Read More</a>--%>
        </div>
    </div>
    <div class="pic_card" style="background-image:url(static/images/us/05.jpg)">
        <div class="pic_content">
            <h2>03</h2>
            <h3>Pic Three</h3>
            <p>
                夏天就应该来一场说走就走的旅行，一起坐公交车，来一场公交车旅行，
                穿过安静的田场，穿过喧嚣的城市，一切都会在窗口中一一闪过。
            </p>
<%--            <a href="#">Read More</a>--%>
        </div>
    </div>
    <div class="pic_card" style="background-image:url(static/images/us/01.jpg)">
        <div class="pic_content">
            <h2>04</h2>
            <h3>Pic Four</h3>
            <p>
                秋天，就应该走在铺满枫叶的树林里，讲一场轰轰烈烈的爱情故事。满目的红色风景无处不
                流露出烈火般的热情，风吹过发梢，吹动落叶沙沙，仿佛在为我们演奏者秋天的歌。
            </p>
<%--            <a href="#">Read More</a>--%>
        </div>
    </div>
    <div class="pic_card" style="background-image:url(static/images/us/06.jpg)">
        <div class="pic_content">
            <h2>05</h2>
            <h3>Pic Five</h3>
            <p>
                吃剩的伊丽莎白瓜皮没有地方放怎么办？拿来搭积木吧，来看看谁搭的最高，这次我创下了个人最好记录，总共7层！
            </p>
<%--            <a href="#">Read More</a>--%>
        </div>
    </div>
    <div class="pic_card" style="background-image:url(static/images/us/07.jpg)">
        <div class="pic_content">
            <h2>06</h2>
            <h3>Pic Six</h3>
            <p>
                西塔的小巷里有着很浓郁的民族氛围，西塔是沈阳市朝鲜族的聚集地区，里面有许多的
                朝鲜特色美食，我们哪天刚从朝鲜超市出来，转过路口就发现了这里，是一处适合拍照的好地点。
            </p>
<%--            <a href="#">Read More</a>--%>
        </div>
    </div>
</div>
</div>
<footer id="footer">
    <div id="footer-wrap">
        <div class="copyright">&copy;2021 - 2021 BY ZhangYH</div>
    </div>
</footer>

<!--鼠标点击效果-->
<script src="https://cdn.jsdelivr.net/gh/TRHX/CDN-for-itrhx.com@3.0.8/js/maodian.js"></script>

<script type="text/javascript">
    console.clear();
    console.log("%c 有朋自远方来, 不亦说乎.", "background:#24272A; color:#ffffff", "");
    console.log("%c Github %c", "background:#24272A; color:#ffffff", "", "https://github.com/sun-flower-free");
    console.log("%c 版本号: %c", "background:#24272A; color:#ffffff", "", "1.0.0");
</script>
<script>
    VanillaTilt.init(document.querySelectorAll(".pic_card"),{
        max: 15,
        speed: 400,
        //glare: true,
        // "max-glare": 1
    })
</script>
</body>
</html>
