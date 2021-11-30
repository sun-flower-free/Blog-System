
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>博客管理系统</title>
    <link rel="shortcut icon" type="image/x-icon" href="../static/images/icon.png" media="screen" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/jquery.fancybox@2.1.5/source/jquery.fancybox.css">
    <link rel="stylesheet" href="../static/css/bootstrap4.0.min.css" >
    <link rel="stylesheet" href="../static/css/index.css">
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
    <script src="../static/js/jquery.slim.min.js" ></script>
    <script src="../static/js/popper.min.js" ></script>
    <script src="../static/js/layer.js"></script>
</head>
<body>

    <div id="body-wrap">
        <nav class="navbar navbar-expand-lg navbar-light bg-light" >
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand text-success" href="/admin/main">博客管理</a>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                        <!-- Example single danger button -->
                        <div class="btn-group">
                            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                新建
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="javascript:void(0);" onclick="fullScreen('添加文章','/admin/article/add')">文章</a>
                                <!-- <a class="dropdown-item" href="#">评论</a> -->
                            </div>
                        </div>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/admin/main">主页 </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/article/list">文章管理</a>

                    </li>

                </ul>
                <form class="form-inline my-2 my-lg-0" action="/admin/article/search" method="GET">
                    <input class="form-control mr-sm-2" type="search" placeholder="文章标题或内容..." aria-label="Search" name="word">
                    <button class="btn btn-outline-success my-2 my-sm-0 btn-sm" type="submit">搜索</button>
                </form>

                <a class="btn btn-outline-danger btn-sm" href="/admin/logout" role="button">退出</a>
            </div>
        </nav>

        <img class="card-img-top" src="../static/images/top.jpg" alt="/" style="height: 30em;width:100%;">


        <main id="content-outer">
            <div class="layout_page" id="content-inner">

                <side class="aside_content" id="aside_content">

                    <div class="card-widget card-info">
                        <div class="card-content">
                            <div class="card-info-avatar is-center">
                                <img class="avatar-img"
                                     src="https://cdn.jsdelivr.net/gh/laoxuai/assert/images/20200125221102.png"
                                     alt="avatar">
                                <div class="author-info__name">Welcome Back: ${admin.username}</div>
                                <div class="author-info__description">上次登录时间:${loginLog.localTime}<br>上次登录IP:${loginLog.ip}<br>本次登录IP:${clientIp}</div>
                            </div>
                        </div>
                    </div>

                    <div class="card-widget card-announcement">
                        <div class="card-content">
                            <div class="item-headline">
                                <i class="fa fa-book" aria-hidden="true"></i>
                                <span>界面导航</span>
                                <div class="tool">
                                    <a href="/" target="_blank" rel="noopener noreferrer">Home page</a><br>
                                    <a href="/blog" target="_blank" rel="noopener noreferrer">Blog</a><br>
                                    <a href="/ourStory" target="_blank" rel="noopener noreferrer">Some pictures</a><br>
                                    <a href="/about" target="_blank" rel="noopener noreferrer">About me</a><br>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card-widget card-announcement">
                        <div class="card-content">
                            <div class="item-headline">
                                <i class="fa fa-bullhorn" aria-hidden="true"></i>
                                <span>一言</span>
                            </div>
                            <div id="hitokoto"></div>
                        </div>
                    </div>

                    <div class="card-widget card-announcement">
                        <div class="card-content">
                            <div class="item-headline">
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                <span>今日诗词</span>
                            </div>
                            <div id="jinrishici-sentence"></div>
                        </div>
                    </div>

                </side>

                <article id="page">
                    <div class="article-container">
                        <h2>系统统计</h2>
                        <div class="tool">
                            <table class="table table-hover">
                                <thead>
                                <tr >
                                    <th>#</th>
                                    <th>文章数</th>
                                    <th>评论数</th>
                                    <th>登陆次数</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="table-success">
                                    <th scope="row">全部</th>
                                    <td>${articleCount}</td>
                                    <td>${commentCount}</td>
                                    <td>${loginNum}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <hr>

                        <h2>系统信息</h2>
                        <div class="tool">
                            <table class="table table-sm" >
                                <tr>
                                    <th scope="row">服务器IP</th>
                                    <td>${hostIp}</td>
                                </tr>
                                <tr>
                                    <th scope="row">服务器端口</th>
                                    <td>${hostPort}</td>
                                </tr>
                                <tr>
                                    <th scope="row">服务器当前时间</th>
                                    <td>${date}</td>
                                </tr>
                            </table>
                        </div>
                        <hr>

                        <h2>文章概要</h2>
                        <div class="tool">
                            <table class="table table-sm">
                                <thead>
                                <tr class="table-info">
                                    <th>id</th>
                                    <th width="25%">标题</th>
                                    <th>发表时间</th>
                                    <th>点击量</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${articles}" var="article">
                                    <tr>
                                        <th scope="row">${article.id}</th>
                                        <td>${article.title}</td>
                                        <td>${article.localTime}</td>
                                        <td>${article.click}</td>
                                     </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </article>
            </div>
        </main>
    </div>

    <footer id="footer">
        <div id="footer-wrap">
            Created with <i class="fa fa-heart"></i> by
            <a target="_blank" href="/">ZhangYH</a>
            - Read how I created this and how you can join the challenge
            <a target="_blank" href="https://gitee.com/zyh007/">here</a>.
        </div>
    </footer>

    <!--   一言、今日诗词   -->
    <script src="https://v1.hitokoto.cn/?encode=js&select=%23hitokoto" defer></script>
    <script src="https://sdk.jinrishici.com/v2/browser/jinrishici.js" charset="utf-8"></script>

    <script>
        function fullScreen(title,url){
            var index = layer.open({
                type: 2,
                title: title,
                area: ['70%', '70%'],
                content: url,
                maxmin: true
            });
            layer.full(index);
        }
    </script>

</body>
</html>

<%--
    <div class="card mb-3">

    <div style="height: 180px;overflow: hidden">
        <img class="card-img-top" src="static/images/82839-106.jpg" onerror="defaultImg" alt="/" style="height: 100%;width:100%;">
    </div>

        <div class="card-body">
            <h4 class="card-title">Welcome Back: ${admin.username}</h4>
            <p class="card-text"><small class="text-muted">上次登录时间:${loginLog.localTime}</small></p>
            <p class="card-text"><small class="text-muted">上次登录IP:${loginLog.ip}</small></p>
            <p class="card-text"><small class="text-muted">本次登录IP:${clientIp}</small></p>
        </div>
    </div>
--%>
<%--
<div >
    <table class="table table-hover">
        <p class="text-success" style="text-align: center"> 系统统计</p>
        <thead>
        <tr >
            <th>#</th>
            <th>文章数</th>
            <th>评论数</th>
            <th>登陆次数</th>
        </tr>
        </thead>
        <tbody>
        <tr class="table-success">
            <th scope="row">全部</th>
            <td>${articleCount}</td>
            <td>${commentCount}</td>
            <td>${loginNum}</td>
        </tr>
        </tbody>
    </table>
</div>
<div style="width: 50%;position: relative;left: 25%">
    <table class="table table-sm" >
        <p class="text-success" style="text-align: center"> 系统信息</p>

        <tr>
            <th scope="row">服务器IP</th>
            <td>${hostIp}</td>
        </tr>
        <tr>
            <th scope="row">服务器端口</th>
            <td>${hostPort}</td>
        </tr>
        <tr>
            <th scope="row">服务器当前时间</th>
            <td>${date}</td>
        </tr>

    </table>
</div>
--%>
