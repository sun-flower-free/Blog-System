<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>菜菜张 caicaizhang</title>
    <link rel="shortcut icon" type="image/x-icon" href="/img/web-icon.png" media="screen" />
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <meta name="description" content="00后无为青年，后端开发者（学习者），略懂前端, 学生，实习，缺乏社会的毒打">
    <meta name="keywords" content="Java,Spring,个人博客，博客">
    <meta name="format-detection" content="telephone=no">
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" href="static/css/index.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/jquery.fancybox@2.1.5/source/jquery.fancybox.css">
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <script src="static/js/jquery.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <script src="static/js/jquery-3.2.1.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>

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
            <li class="current_page_item"><a href="/">Home</a></li>
            <li><a href="/blog">Blog</a></li>
            <li><a href="/ourStory">Our story</a></li>
            <li><a href="/about">About me</a></li>
        </ul>
    </nav>
    <!-- /Nav -->

    <div id="body-wrap">
        <nav class="not_index_bg" id="nav_page" style="background-image:url(https://source.unsplash.com/random)">
            <!--https://api.ixiaowai.cn/api/api.php-->
            <div id="page_site-info">
                <div id="site-title">
                    <span class="blogtitle"></span>
                    <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>
                    <script>
                        var typed = new Typed(".blogtitle", {
                            strings: ['自强不息，知行合一', 'Manners makes man'],<!--求知若饥，虚心若愚,Stay Hungry Stay Foolish-->
                            startDelay: 300,
                            typeSpeed: 100,
                            loop: true,
                            backSpeed: 50,
                            showCursor: true
                        });
                    </script>
                </div>
            </div>
        </nav>
        <main id="content-outer">
            <div class="layout_page" id="content-inner">
                <div class="aside_content" id="aside_content">
                    <div class="card-widget card-info">
                        <div class="card-content">
                            <div class="card-info-avatar is-center">
                                <img class="avatar-img"
                                     src="https://cdn.jsdelivr.net/gh/laoxuai/assert/images/20200125221102.png"
                                     alt="avatar">
                                <div class="author-info__name">ZhangYH</div>
                                <div class="author-info__description">00后无为青年，后端<s>开发者</s>(学习者)，略懂前端，学生，<s>实习</s>，缺乏社会的毒打</div>
                            </div>
                            <div class="card-info-social-icons is-center">
                                <a class="social-icon" href="https://github.com/sun-flower-free" target="_blank">
                                    <i class="fa fa-github"></i>
                                </a>
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

                    <div class="card-widget card-webinfo">
                        <div class="card-content">
                            <div class="item-headline">
                                <i class="fa fa-line-chart" aria-hidden="true"></i>
                                <span>站点信息</span>
                            </div>
                            <div class="webinfo">
                                <div class="webinfo-item">
                                    <div class="webinfo-site-uv-name">本站访客数 :</div>
                                    <div class="webinfo-site-uv-count" id="busuanzi_value_site_uv"></div>
                                </div>
                                <div class="webinfo-item">
                                    <div class="webinfo-site-name">本站总访问量 :</div>
                                    <div class="webinfo-site-pv-count" id="busuanzi_value_site_pv"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <article id="page">
                    <div class="article-container">
                        <h2>音乐</h2>
                        <meting-js auto="https://music.163.com/#/playlist?id=5317976791.html">
                            <!--https://y.qq.com/n/yqq/playlist/7713574197.html-->
                        </meting-js>
                        <hr>

                        <p>别卷了，别卷了，啥也不会呢</p>
                        <h2>技能</h2>
                        <div class="skillbox">
                            <div class="skillbar">
                                <div class="skillbar-title"
                                     style="background: linear-gradient(to right, #FF0066 0%, #FF00CC 100%); width: 30%">
                                    <span>Java</span>
                                </div>
                                <div class="skill-bar-percent">30%</div>
                            </div>
                            <div class="skillbar">
                                <div class="skillbar-title"
                                     style="background: linear-gradient(to right, #9900FF 0%, #CC66FF 100%); width: 30%">
                                    <span>前端</span>
                                </div>
                                <div class="skill-bar-percent">30%</div>
                            </div>
                            <div class="skillbar">
                                <div class="skillbar-title"
                                     style="background: linear-gradient(to right, #2196F3 0%, #42A5F5 100%); width: 25%">
                                    <span>Spring</span>
                                </div>
                                <div class="skill-bar-percent">25%</div>
                            </div>
                            <div class="skillbar">
                                <div class="skillbar-title"
                                     style="background: linear-gradient(to right, #00BCD4 0%, #80DEEA 100%); width: 25%">
                                    <span>SpringMVC</span>
                                </div>
                                <div class="skill-bar-percent">25%</div>
                            </div>
                            <div class="skillbar">
                                <div class="skillbar-title"
                                     style="background: linear-gradient(to right, #00BCD4 0%, #f54009 100%); width: 35%">
                                    <span>SpringBoot</span>
                                </div>
                                <div class="skill-bar-percent">35%</div>
                            </div>
                            <div class="skillbar">
                                <div class="skillbar-title"
                                     style="background: linear-gradient(to right, #4CAF50 0%, #81C784 100%); width: 50%">
                                    <span>Mybatis</span>
                                </div>
                                <div class="skill-bar-percent">50%</div>
                            </div>
                            <div class="skillbar">
                                <div class="skillbar-title"
                                     style="background: linear-gradient(to right, #FFEB3B 0%, #FFF176 100%); width: 55%">
                                    <span>数据结构与算法</span>
                                </div>
                                <div class="skill-bar-percent">55%</div>
                            </div>
                            <div class="skillbar">
                                <div class="skillbar-title"
                                     style="background: linear-gradient(to right, #e53bff 0%, #cd76ff 100%); width: 35%">
                                    <span>MySQL</span>
                                </div>
                                <div class="skill-bar-percent">35%</div>
                            </div>
                        </div>

                        <hr>
                        <h2>刷题</h2>
                        <div class="tool">
                            <a href="https://leetcode-cn.com/problemset/all/" target="_blank">Leetcode</a><br>
                            <a href="https://www.nowcoder.com/ta/coding-interviews" target="_blank">剑指 Offer</a>
                        </div>

                        <hr>
                        <h2>收藏</h2>
                        <div class="tool">
                            <a href="http://tooool.org/" target="_blank" rel="noopener noreferrer">程序员导航</a><br>
                            <a href="https://adzhp.cn/" target="_blank" rel="noopener noreferrer">爱达杂货铺</a><br>
                            <a href="http://ifeve.com/" target="_blank" rel="noopener noreferrer">并发编程网</a><br>
                            <a href="https://www.runoob.com/" target="_blank" rel="noopener noreferrer">菜鸟教程</a><br>
                            <a href="http://c.biancheng.net/stl/" target="_blank" rel="noopener noreferrer">C++STL教程，非常详细</a><br>
                        </div>

                        <hr>
                        <p>随机图片接口推荐</p>
                        <h2>一些图片接口</h2>
                        <div class = "tool">
                            <ol>
                                <li>
                                    <a href="https://api.lyiqk.cn/scenery">https://api.lyiqk.cn/scenery</a>
                                    <br>
                                    <a class = "lightbox" href="https://api.lyiqk.cn/scenery">
                                        <img class = "lazy loaded" width="240" src="https://api.lyiqk.cn/scenery" >
                                    </a>
                                </li>
                                <li>
                                    <a href="https://source.unsplash.com/random">https://source.unsplash.com/random</a>
                                    <br>
                                    <a class = "lightbox" href="https://source.unsplash.com/random">
                                        <img class = "lazy loaded" width="240" src="https://source.unsplash.com/random" >
                                    </a>
                                </li>
                            </ol>
                        </div>

                    </div>
                </article>
            </div>
        </main>
        <footer id="footer">
            <div id="footer-wrap">
                <div class="copyright">&copy;2021 - 2021 BY ZhangYH</div>
            </div>
        </footer>
    </div>

    <div id="aboutMe">

    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery.fancybox@2.1.5/source/jquery.fancybox.js"></script>
    <script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/instant.page@3.0.0/instantpage.js" type="module"></script>
    <script src="https://cdn.jsdelivr.net/npm/lazysizes@5.2.0/lazysizes.min.js" async></script>
    <!-- aplayer、meting -->
    <!-- require APlayer -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aplayer/dist/APlayer.min.css">
    <script src="https://cdn.jsdelivr.net/npm/aplayer/dist/APlayer.min.js"></script>
    <!-- require MetingJS -->
    <script src="https://cdn.jsdelivr.net/npm/meting@2/dist/Meting.min.js"></script>

    <!-- nplayer -->
    <script src="https://unpkg.com/nplayer@latest/dist/index.min.js"></script>

    <!--   一言、今日诗词   -->
    <script src="https://v1.hitokoto.cn/?encode=js&select=%23hitokoto" defer></script>
    <script src="https://sdk.jinrishici.com/v2/browser/jinrishici.js" charset="utf-8"></script>

    <!--鼠标点击效果-->
    <script src="https://cdn.jsdelivr.net/gh/TRHX/CDN-for-itrhx.com@3.0.8/js/maodian.js"></script>

    <!-- 看板娘 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget@latest/autoload.js"></script>

    <script type="text/javascript">
        console.clear();
        console.log("%c 有朋自远方来, 不亦说乎.", "background:#24272A; color:#ffffff", "");
        console.log("%c Github %c", "background:#24272A; color:#ffffff", "", "https://github.com/laoxuai");
        console.log("%c 版本号: %c", "background:#24272A; color:#ffffff", "", "1.0.0");


        (function ($) {
            $.fn.snow = function (options) {
                var $flake = $('<div id="snowbox" />').css({ 'position': 'absolute', 'z-index': '9999', 'top': '-50px' }).html('&#10052;'),
                    documentHeight = $(document).height(),
                    documentWidth = $(document).width(),
                    defaults = {
                        minSize: 10,
                        maxSize: 20,
                        newOn: 1000,
                        flakeColor: "#AFDAEF" /* 此处可以定义雪花颜色，若要白色可以改为#FFFFFF */
                    },
                    options = $.extend({}, defaults, options);
                var interval = setInterval(function () {
                    var startPositionLeft = Math.random() * documentWidth - 100,
                        startOpacity = 0.5 + Math.random(),
                        sizeFlake = options.minSize + Math.random() * options.maxSize,
                        endPositionTop = documentHeight - 200,
                        endPositionLeft = startPositionLeft - 500 + Math.random() * 500,
                        durationFall = documentHeight * 10 + Math.random() * 5000;
                    $flake.clone().appendTo('body').css({
                        left: startPositionLeft,
                        opacity: startOpacity,
                        'font-size': sizeFlake,
                        color: options.flakeColor
                    }).animate({
                        top: endPositionTop,
                        left: endPositionLeft,
                        opacity: 0.2
                    }, durationFall, 'linear', function () {
                        $(this).remove()
                    });
                }, options.newOn);
            };
        })(jQuery);
        $(function () {
            $.fn.snow({
                minSize: 5, /* 定义雪花最小尺寸 */
                maxSize: 50,/* 定义雪花最大尺寸 */
                newOn: 800  /* 定义密集程度，数字越小越密集 */
            });
        });

        // 浏览器搞笑标题
        var OriginTitle = document.title;
        var titleTime;
        document.addEventListener('visibilitychange', function () {
            if (document.hidden) {
                // $('[rel="icon"]').attr('href', "/funny.ico");
                document.title = '╭(°A°`)╮ 页面崩溃啦 ~';
                clearTimeout(titleTime);
            }
            else {
                $('[rel="icon"]').attr('href', "/favicon.ico");
                document.title = '(ฅ>ω<*ฅ) 噫又好啦 ~' + OriginTitle;
                titleTime = setTimeout(function () {
                    document.title = OriginTitle;
                }, 2000);
            }
        });
    </script>
</body>
</html>



<!--<ol>
<li>
<a href="http://tooool.org/" target="_blank" rel="noopener noreferrer">程序员导航</a><br>
</li>
<li>
<a href="https://adzhp.cn/" target="_blank" rel="noopener noreferrer">爱达杂货铺</a><br>
</li>
<li>
<a href="http://ifeve.com/" target="_blank" rel="noopener noreferrer">并发编程网</a><br>
</li>
<li>
<a href="https://www.runoob.com/" target="_blank" rel="noopener noreferrer">菜鸟教程</a><br>
</li>
<li>
<a href="http://c.biancheng.net/stl/" target="_blank" rel="noopener noreferrer">C++STL教程，非常详细</a><br>
</li>
</ol>-->
<!--                    <nav class="navbar navbar-default" role="navigation">
<div class="container-fluid">
<div class="navbar-header">
<a class="navbar-brand" href="#">菜鸟教程</a>
</div>
<div>
<ul class="nav navbar-nav navbar-left">
<li class="active"><a href="#">iOS</a></li>
<li><a href="#">SVN</a></li>
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">
Java
<b class="caret"></b>
</a>
<ul class="dropdown-menu">
<li><a href="#">jmeter</a></li>
<li><a href="#">EJB</a></li>
<li><a href="#">Jasper Report</a></li>
<li class="divider"></li>
<li><a href="#">分离的链接</a></li>
<li class="divider"></li>
<li><a href="#">另一个分离的链接</a></li>
</ul>
</li>
</ul>
</div>
</div>
</nav>-->