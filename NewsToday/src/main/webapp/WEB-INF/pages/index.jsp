<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>NewsToday</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/font.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/li-scroller.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/jquery.fancybox.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/theme.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
    <!--[if lt IE 9]>
    <script src="/assets/js/html5shiv.min.js"></script>
    <script src="/assets/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>
<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
<div class="container">
    <header id="header">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="header_top">
                    <div class="header_top_left">
                        <ul class="top_nav">
                            <li><a href="/home">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="/contact">Contact</a></li>
                        </ul>
                    </div>
                    <div class="header_top_right">
                        <p>
                            <script> document.write(new Date().toLocaleDateString()); </script>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="header_bottom">
                    <div class="logo_area"><a href="/home" class="logo"><img src="../../images/logo-main.jpg"
                                                                             alt=""></a></div>
                    <div class="add_banner"><a href="#">
                        <img src="/getPartnerImage?filename=${topPartner.pic}" alt="" style="width:728px;height: 90px;">
                    </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <section id="navArea">
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar"><span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                </button>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav main_nav">
                    <li class="active"><a href="/home"><span class="fa fa-home desktop-home"></span><span
                            class="mobile-show">Home</span></a></li>
                    <li><a href="/contact">contact</a></li>
                    <li><a href="/admin">admin</a></li>
                    <li><a href="/postlist">post list</a></li>
                    <c:forEach items="${categoryList}" var="category">
                        <li><a href="/postlist/by/category/${category.id}">${category.name}</a></li>
                    </c:forEach>
                </ul>
            </div>
        </nav>
    </section>
    <section id="newsSection">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="latest_newsarea"><span>Latest News</span>
                    <ul id="ticker01" class="news_sticker">
                        <c:forEach items="${sliderPosts}" var="post">
                            <li style="overflow: hidden"><a href="/post/${post.id}"><img
                                    src="/getImage?filename=${post.pic}" alt="">${post.title}&nbsp;</a>
                            </li>
                        </c:forEach>
                    </ul>
                    <div class="social_area">
                        <ul class="social_nav">
                            <li class="facebook"><a href="https://web.facebook.com/profile.php?id=100009074155208"></a></li>
                            <li class="twitter"><a href="https://twitter.com/"></a></li>
                            <li class="flickr"><a href="https://www.flickr.com/"></a></li>
                            <li class="pinterest"><a href="https://www.pinterest.com/"></a></li>
                            <li class="googleplus"><a href="https://plus.google.com/discover"></a></li>
                            <li class="vimeo"><a href="https://vimeo.com/"></a></li>
                            <li class="youtube"><a href="https://www.youtube.com/"></a></li>
                            <li class="mail"><a href="https://mail.google.com"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="sliderSection">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-8">
                <div class="slick_slider">
                    <c:forEach items="${mainPosts}" var="post">
                        <div class="single_iteam"><a href="/post/${post.id}"><img src="/getImage?filename=${post.pic}"
                                                                                  alt=""></a>
                            <div class="slider_article">
                                <h2><a class="slider_tittle" href="/post/${post.id}">${post.title}</a></h2>

                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="latest_post">
                    <h2><span>Latest post</span></h2>
                    <div class="latest_post_container" style=" overflow: hidden;">
                        <div id="prev-button"><i class="fa fa-chevron-up"></i></div>
                        <ul class="latest_postnav">
                            <c:forEach items="${sliderPosts}" var="post">

                                <li style=" text-overflow: ellipsis; white-space: inherit; overflow: hidden;">
                                    <div class="media"><a href="/post/${post.id}" class="media-left"> <img alt=""
                                                                                                           src="/getImage?filename=${post.pic}">
                                    </a>
                                        <div class="media-body" style="overflow: hidden; height: 20px"><a
                                                href="/post/${post.id}" class="catg_title">${post.title} </a>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>


                        </ul>
                        <div id="next-button"><i class="fa  fa-chevron-down"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="contentSection">
        <c:set var="politic" value="politic"/>
        <c:set var="business" value="business"/>
        <c:set var="sport" value="sport"/>
        <c:set var="live_stile" value="live_stile"/>
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-8">
                <div class="left_content">
                    <div class="single_post_content">

                        <a href="/postlist/by/category/${sortedCategories.get(0).id}" class="single_post_content">
                            <h2><span>${sortedCategories.get(0).name}</span></h2>
                        </a>
                        <c:if test="${sortedCategories.get(0).name==politic}">
                            <div class="single_post_content_left">
                                <ul class="business_catgnav  wow fadeInDown">
                                    <li>
                                        <figure class="bsbig_fig"><a href="/post/${politicPosts.get(0).id}"
                                                                     class="featured_img">
                                            <img alt="" src="/getImage?filename=${politicPosts.get(0).pic}"> <span
                                                class="overlay"></span>
                                        </a>
                                            <div style="overflow: hidden; height: 80px">
                                                <figcaption><a
                                                        href="/post/${politicPosts.get(0).id}">${politicPosts.get(0).title}</a>
                                                </figcaption>
                                            </div>

                                            <div style="overflow: hidden;height:60px">
                                                <p style="overflow: hidden">${politicPosts.get(0).description}</p>
                                            </div>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${politicPosts.get(1).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${politicPosts.get(1).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${politicPosts.get(1).id}"
                                                                       class="catg_title">
                                                    ${politicPosts.get(1).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${politicPosts.get(2).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${politicPosts.get(2).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${politicPosts.get(2).id}"
                                                                       class="catg_title">
                                                    ${politicPosts.get(2).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${politicPosts.get(3).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${politicPosts.get(3).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${politicPosts.get(3).id}"
                                                                       class="catg_title">
                                                    ${politicPosts.get(3).title}</a></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </c:if>

                        <c:if test="${sortedCategories.get(0).name==business}">
                            <div class="single_post_content_left">
                                <ul class="business_catgnav  wow fadeInDown">
                                    <li>
                                        <figure class="bsbig_fig"><a href="/post/${businessPosts.get(0).id}"
                                                                     class="featured_img">
                                            <img alt="" src="/getImage?filename=${businessPosts.get(0).pic}"> <span
                                                class="overlay"></span>
                                        </a>
                                            <div style="overflow: hidden; height: 80px">
                                                <figcaption><a
                                                        href="/post/${businessPosts.get(0).id}">${businessPosts.get(0).title}</a>
                                                </figcaption>
                                            </div>
                                            <div style="overflow: hidden;height: 60px">
                                                <p style="overflow: hidden">${businessPosts.get(0).description}</p>
                                            </div>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${businessPosts.get(1).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${businessPosts.get(1).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${businessPosts.get(1).id}"
                                                                       class="catg_title">
                                                    ${businessPosts.get(1).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${businessPosts.get(2).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${businessPosts.get(2).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${businessPosts.get(2).id}"
                                                                       class="catg_title">
                                                    ${businessPosts.get(2).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${businessPosts.get(3).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${businessPosts.get(3).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${businessPosts.get(3).id}"
                                                                       class="catg_title">
                                                    ${businessPosts.get(3).title}</a></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </c:if>

                        <c:if test="${sortedCategories.get(0).name==live_stile}">
                            <div class="single_post_content_left">
                                <ul class="business_catgnav  wow fadeInDown">
                                    <li>
                                        <figure class="bsbig_fig"><a href="/post/${live_stilePosts.get(0).id}"
                                                                     class="featured_img">
                                            <img alt="" src="/getImage?filename=${live_stilePosts.get(0).pic}"> <span
                                                class="overlay"></span>
                                        </a>
                                            <div style="overflow: hidden; height: 80px">
                                                <figcaption><a
                                                        href="/post/${live_stilePosts.get(0).id}">${live_stilePosts.get(0).title}</a>
                                                </figcaption>
                                            </div>
                                            <div style=" overflow: hidden;height: 60px">
                                                <p style="overflow: hidden">${live_stilePosts.get(0).description}</p>
                                            </div>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${live_stilePosts.get(1).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${live_stilePosts.get(1).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${live_stilePosts.get(1).id}"
                                                                       class="catg_title">
                                                    ${live_stilePosts.get(1).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${live_stilePosts.get(2).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${live_stilePosts.get(2).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${live_stilePosts.get(2).id}"
                                                                       class="catg_title">
                                                    ${live_stilePosts.get(2).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${live_stilePosts.get(3).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${live_stilePosts.get(3).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${live_stilePosts.get(3).id}"
                                                                       class="catg_title">
                                                    ${live_stilePosts.get(3).title}</a></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </c:if>

                        <c:if test="${sortedCategories.get(0).name==sport}">
                            <div class="single_post_content_left">
                                <ul class="business_catgnav  wow fadeInDown">
                                    <li>
                                        <figure class="bsbig_fig"><a href="/post/${sportPosts.get(0).id}"
                                                                     class="featured_img">
                                            <img alt="" src="/getImage?filename=${sportPosts.get(0).pic}"> <span
                                                class="overlay"></span>
                                        </a>
                                            <div style="overflow: hidden; height: 80px">
                                                <figcaption><a
                                                        href="/post/${sportPosts.get(0).id}">${sportPosts.get(0).title}</a>
                                                </figcaption>
                                            </div>
                                            <div style="overflow: hidden;height: 60px">
                                                <p style="overflow: hidden">${sportPosts.get(0).description}</p>
                                            </div>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${sportPosts.get(1).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${sportPosts.get(1).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${sportPosts.get(1).id}"
                                                                       class="catg_title">
                                                    ${sportPosts.get(1).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${sportPosts.get(2).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${sportPosts.get(2).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${sportPosts.get(2).id}"
                                                                       class="catg_title">
                                                    ${sportPosts.get(2).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${sportPosts.get(3).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${sportPosts.get(3).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${sportPosts.get(3).id}"
                                                                       class="catg_title">
                                                    ${sportPosts.get(3).title}</a></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </c:if>

                    </div>
                    <div class="fashion_technology_area">
                        <div class="fashion">
                            <div class="single_post_content">

                                <a href="/postlist/by/category/${sortedCategories.get(1).id}"
                                   class="single_post_content">

                                    <h2><span>${sortedCategories.get(1).name}</span></h2>
                                </a>
                                <c:if test="${sortedCategories.get(1).name==politic}">
                                    <ul class="business_catgnav wow fadeInDown">
                                        <li>
                                            <figure class="bsbig_fig"><a href="/post/${politicPosts.get(0).id}"
                                                                         class="featured_img">
                                                <img alt="" src="/getImage?filename=${politicPosts.get(0).pic}"> <span
                                                    class="overlay"></span> </a>
                                                <div style="overflow: hidden; height: 80px">
                                                    <figcaption><a href="/post/${politicPosts.get(0).id}">
                                                            ${politicPosts.get(0).title}
                                                    </a></figcaption>
                                                </div>
                                                <div style="overflow: hidden;height: 60px; margin-bottom: 20px">
                                                    <p style="overflow: hidden">${politicPosts.get(0).description}</p>
                                                </div>
                                            </figure>
                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">
                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${politicPosts.get(1).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${politicPosts.get(1).pic}">
                                                </a>

                                                    <div class="media-body"><a href="/post/${politicPosts.get(1).id}"
                                                                               class="catg_title">
                                                            ${politicPosts.get(1).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${politicPosts.get(2).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${politicPosts.get(2).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${politicPosts.get(2).id}"
                                                                               class="catg_title">
                                                            ${politicPosts.get(2).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${politicPosts.get(3).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${politicPosts.get(3).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${politicPosts.get(3).id}"
                                                                               class="catg_title">
                                                            ${politicPosts.get(3).title}</a></div>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </c:if>

                                <c:if test="${sortedCategories.get(1).name==sport}">
                                    <ul class="business_catgnav wow fadeInDown">
                                        <li>
                                            <figure class="bsbig_fig"><a href="/post/${sportPosts.get(0).id}"
                                                                         class="featured_img">
                                                <img alt="" src="/getImage?filename=${sportPosts.get(0).pic}"> <span
                                                    class="overlay"></span> </a>
                                                <div style="overflow: hidden; height: 80px">
                                                    <figcaption><a href="/post/${sportPosts.get(0).id}"
                                                            ${sportPosts.get(0).title}
                                                        </a></figcaption>
                                                </div>
                                                <div style="overflow: hidden;height: 60px; margin-bottom: 20px">
                                                    <p style="overflow: hidden">${sportPosts.get(0).description}</p>
                                                </div>
                                            </figure>
                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">
                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${sportPosts.get(1).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${sportPosts.get(1).pic}">
                                                </a>

                                                    <div class="media-body"><a href="/post/${sportPosts.get(1).id}"
                                                                               class="catg_title">
                                                            ${sportPosts.get(1).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${sportPosts.get(2).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${sportPosts.get(2).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${sportPosts.get(2).id}"
                                                                               class="catg_title">
                                                            ${sportPosts.get(2).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${sportPosts.get(3).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${sportPosts.get(3).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${sportPosts.get(3).id}"
                                                                               class="catg_title">
                                                            ${sportPosts.get(3).title}</a></div>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </c:if>

                                <c:if test="${sortedCategories.get(1).name==live_stile}">
                                    <ul class="business_catgnav wow fadeInDown">
                                        <li>
                                            <figure class="bsbig_fig"><a href="/post/${live_stilePosts.get(0).id}"
                                                                         class="featured_img">
                                                <img alt="" src="/getImage?filename=${live_stilePosts.get(0).pic}">
                                                <span
                                                        class="overlay"></span> </a>
                                                <div style="overflow: hidden; height: 80px">
                                                    <figcaption><a href="/post/${live_stilePosts.get(0).id}">
                                                            ${live_stilePosts.get(0).title}
                                                    </a></figcaption>
                                                </div>
                                                <div style="overflow: hidden;height: 60px; margin-bottom: 20px">
                                                    <p style="overflow: hidden">${live_stilePosts.get(0).description}</p>
                                                </div>
                                            </figure>
                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">
                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${live_stilePosts.get(1).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${live_stilePosts.get(1).pic}">
                                                </a>

                                                    <div class="media-body"><a href="/post/${live_stilePosts.get(1).id}"
                                                                               class="catg_title">
                                                            ${live_stilePosts.get(1).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${live_stilePosts.get(2).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${live_stilePosts.get(2).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${live_stilePosts.get(2).id}"
                                                                               class="catg_title">
                                                            ${live_stilePosts.get(2).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${live_stilePosts.get(3).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${live_stilePosts.get(3).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${live_stilePosts.get(3).id}"
                                                                               class="catg_title">
                                                            ${live_stilePosts.get(3).title}</a></div>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </c:if>

                                <c:if test="${sortedCategories.get(1).name==business}">
                                    <ul class="business_catgnav wow fadeInDown">
                                        <li>
                                            <figure class="bsbig_fig"><a href="/post/${businessPosts.get(0).id}"
                                                                         class="featured_img">
                                                <img alt="" src="/getImage?filename=${businessPosts.get(0).pic}"> <span
                                                    class="overlay"></span> </a>
                                                <div style="overflow: hidden; height: 80px">
                                                    <figcaption><a href="/post/${businessPosts.get(0).id}">
                                                            ${businessPosts.get(0).title}
                                                    </a></figcaption>
                                                </div>
                                                <div style="overflow: hidden;height: 60px; margin-bottom: 20px">
                                                    <p style="overflow: hidden">${businessPosts.get(0).description}</p>
                                                </div>
                                            </figure>
                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">
                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${businessPosts.get(1).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${businessPosts.get(1).pic}">
                                                </a>

                                                    <div class="media-body"><a href="/post/${businessPosts.get(1).id}"
                                                                               class="catg_title">
                                                            ${businessPosts.get(1).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${businessPosts.get(2).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${businessPosts.get(2).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${businessPosts.get(2).id}"
                                                                               class="catg_title">
                                                            ${businessPosts.get(2).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${businessPosts.get(3).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${businessPosts.get(3).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${businessPosts.get(3).id}"
                                                                               class="catg_title">
                                                            ${businessPosts.get(3).title}</a></div>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </c:if>

                            </div>
                        </div>
                        <div class="technology">
                            <div class="single_post_content">
                                <a href="/postlist/by/category/${sortedCategories.get(2).id}"
                                   class="single_post_content">

                                    <h2><span>${sortedCategories.get(2).name}</span></h2>
                                </a>
                                <c:if test="${sortedCategories.get(2).name==politic}">
                                    <ul class="business_catgnav">
                                        <li>
                                            <figure class="bsbig_fig wow fadeInDown"><a
                                                    href="/post/${politicPosts.get(0).id}"
                                                    class="featured_img"> <img
                                                    alt=""
                                                    src="/getImage?filename=${politicPosts.get(0).pic}">
                                                <span class="overlay"></span> </a>
                                                <div style="overflow: hidden; height: 78px">

                                                    <figcaption><a
                                                            href="/post/${politicPosts.get(0).id}">${politicPosts.get(0).title}</a>
                                                    </figcaption>
                                                </div>
                                                <div style="overflow: hidden;height: 60px; margin-bottom: 20px">

                                                    <p>${politicPosts.get(0).description}</p>
                                                </div>
                                            </figure>
                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${politicPosts.get(1).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${politicPosts.get(1).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${politicPosts.get(1).id}"
                                                                               class="catg_title">
                                                            ${politicPosts.get(1).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${politicPosts.get(2).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${politicPosts.get(2).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${politicPosts.get(2).id}"
                                                                               class="catg_title">
                                                            ${politicPosts.get(2).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${politicPosts.get(3).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${politicPosts.get(3).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${politicPosts.get(3).id}"
                                                                               class="catg_title">
                                                            ${politicPosts.get(3).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </c:if>

                                <c:if test="${sortedCategories.get(2).name==sport}">
                                    <ul class="business_catgnav">
                                        <li>
                                            <figure class="bsbig_fig wow fadeInDown"><a
                                                    href="/post/${sportPosts.get(0).id}"
                                                    class="featured_img"> <img
                                                    alt=""
                                                    src="/getImage?filename=${sportPosts.get(0).pic}">
                                                <span class="overlay"></span> </a>
                                                <div style="overflow: hidden; height: 78px">

                                                    <figcaption><a
                                                            href="/post/${sportPosts.get(0).id}">${sportPosts.get(0).title}</a>
                                                    </figcaption>
                                                </div>
                                                <div style="overflow: hidden;height: 60px; margin-bottom: 20px">

                                                    <p>${sportPosts.get(0).description}</p>
                                                </div>
                                            </figure>
                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${sportPosts.get(1).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${sportPosts.get(1).pic}">
                                                </a>
                                                    <div class="media-body"><a hhref="/post/${sportPosts.get(1).id}"
                                                                               class="catg_title">
                                                            ${sportPosts.get(1).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${sportPosts.get(2).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${sportPosts.get(2).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${sportPosts.get(2).id}"
                                                                               class="catg_title">
                                                            ${sportPosts.get(2).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${sportPosts.get(3).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${sportPosts.get(3).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${sportPosts.get(3).id}"
                                                                               class="catg_title">
                                                            ${sportPosts.get(3).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </c:if>

                                <c:if test="${sortedCategories.get(2).name==live_stile}">
                                    <ul class="business_catgnav">
                                        <li>
                                            <figure class="bsbig_fig wow fadeInDown"><a
                                                    href="/post/${live_stilePosts.get(0).id}"
                                                    class="featured_img"> <img
                                                    alt=""
                                                    src="/getImage?filename=${live_stilePosts.get(0).pic}">
                                                <span class="overlay"></span> </a>
                                                <div style="overflow: hidden; height: 78px">

                                                    <figcaption><a
                                                            href="/post/${live_stilePosts.get(0).id}">${live_stilePosts.get(0).title}</a>
                                                    </figcaption>
                                                </div>
                                                <div style="overflow: hidden;height: 60px; margin-bottom: 20px">

                                                    <p>${live_stilePosts.get(0).description}</p>
                                                </div>
                                            </figure>
                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${live_stilePosts.get(1).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${live_stilePosts.get(1).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${live_stilePosts.get(1).id}"
                                                                               class="catg_title">
                                                            ${live_stilePosts.get(1).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${live_stilePosts.get(2).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${live_stilePosts.get(2).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${live_stilePosts.get(2).id}"
                                                                               class="catg_title">
                                                            ${live_stilePosts.get(2).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${live_stilePosts.get(3).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${live_stilePosts.get(3).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${live_stilePosts.get(3).id}"
                                                                               class="catg_title">
                                                            ${live_stilePosts.get(3).title}</a></div>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </c:if>

                                <c:if test="${sortedCategories.get(2).name==business}">
                                    <ul class="business_catgnav">
                                        <li>
                                            <figure class="bsbig_fig wow fadeInDown"><a
                                                    href="/post/${businessPosts.get(0).id}"
                                                    class="featured_img"> <img
                                                    alt=""
                                                    src="/getImage?filename=${businessPosts.get(0).pic}">
                                                <span class="overlay"></span> </a>
                                                <div style="overflow: hidden; height: 78px">

                                                    <figcaption><a
                                                            href="/post/${businessPosts.get(0).id}">${businessPosts.get(0).title}</a>
                                                    </figcaption>
                                                </div>
                                                <div style="overflow: hidden;height: 60px; margin-bottom: 20px">

                                                    <p>${businessPosts.get(0).description}</p>
                                                </div>
                                            </figure>
                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${businessPosts.get(1).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${businessPosts.get(1).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${businessPosts.get(1).id}"
                                                                               class="catg_title">
                                                            ${businessPosts.get(1).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${businessPosts.get(2).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${businessPosts.get(2).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${businessPosts.get(2).id}"
                                                                               class="catg_title">
                                                            ${businessPosts.get(2).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div style="overflow: hidden;height: 65px; ">

                                                <div class="media wow fadeInDown"><a
                                                        href="/post/${businessPosts.get(3).id}"
                                                        class="media-left"> <img alt=""
                                                                                 src="/getImage?filename=${businessPosts.get(3).pic}">
                                                </a>
                                                    <div class="media-body"><a href="/post/${businessPosts.get(3).id}"
                                                                               class="catg_title">
                                                            ${businessPosts.get(3).title}</a></div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </c:if>

                            </div>
                        </div>
                    </div>

                    <div class="single_post_content">
                        <a href="/postlist/by/category/${sortedCategories.get(3).id}" class="single_post_content">

                            <h2><span>${sortedCategories.get(3).name}</span></h2>
                        </a>
                        <c:if test="${sortedCategories.get(3).name==politic}">
                            <div class="single_post_content_left">
                                <ul class="business_catgnav  wow fadeInDown">
                                    <li>
                                        <figure class="bsbig_fig"><a href="/post/${politicPosts.get(0).id}"
                                                                     class="featured_img">
                                            <img alt="" src="/getImage?filename=${politicPosts.get(0).pic}"> <span
                                                class="overlay"></span>
                                        </a>
                                            <div style="overflow: hidden; height: 80px">
                                                <figcaption><a
                                                        href="/post/${politicPosts.get(0).id}">${politicPosts.get(0).title}</a>
                                                </figcaption>
                                            </div>
                                            <div style="overflow: hidden;height: 60px">
                                                <p style="overflow: hidden">${politicPosts.get(0).description}</p>
                                            </div>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${politicPosts.get(1).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${politicPosts.get(1).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${politicPosts.get(1).id}"
                                                                       class="catg_title">
                                                    ${politicPosts.get(1).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${politicPosts.get(2).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${politicPosts.get(2).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${politicPosts.get(2).id}"
                                                                       class="catg_title">
                                                    ${politicPosts.get(2).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${politicPosts.get(3).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${politicPosts.get(3).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${politicPosts.get(3).id}"
                                                                       class="catg_title">
                                                    ${politicPosts.get(3).title}</a></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </c:if>

                        <c:if test="${sortedCategories.get(3).name==business}">
                            <div class="single_post_content_left">
                                <ul class="business_catgnav  wow fadeInDown">
                                    <li>
                                        <figure class="bsbig_fig"><a href="/post/${businessPosts.get(0).id}"
                                                                     class="featured_img">
                                            <img alt="" src="/getImage?filename=${businessPosts.get(0).pic}"> <span
                                                class="overlay"></span>
                                        </a>
                                            <div style="overflow: hidden; height: 80px">
                                                <figcaption><a
                                                        href="/post/${businessPosts.get(0).id}">${businessPosts.get(0).title}</a>
                                                </figcaption>
                                            </div>
                                            <div style="overflow: hidden;height: 60px">
                                                <p style="overflow: hidden">${businessPosts.get(0).description}</p>
                                            </div>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${businessPosts.get(1).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${businessPosts.get(1).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${businessPosts.get(1).id}"
                                                                       class="catg_title">
                                                    ${businessPosts.get(1).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${businessPosts.get(2).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${businessPosts.get(2).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${businessPosts.get(2).id}"
                                                                       class="catg_title">
                                                    ${businessPosts.get(2).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${businessPosts.get(3).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${businessPosts.get(3).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${businessPosts.get(3).id}"
                                                                       class="catg_title">
                                                    ${businessPosts.get(3).title}</a></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </c:if>

                        <c:if test="${sortedCategories.get(3).name==live_stile}">
                            <div class="single_post_content_left">
                                <ul class="business_catgnav  wow fadeInDown">
                                    <li>
                                        <figure class="bsbig_fig"><a href="/post/${live_stilePosts.get(0).id}"
                                                                     class="featured_img">
                                            <img alt="" src="/getImage?filename=${live_stilePosts.get(0).pic}"> <span
                                                class="overlay"></span>
                                        </a>
                                            <div style="overflow: hidden; height: 80px">
                                                <figcaption><a
                                                        href="/post/${live_stilePosts.get(0).id}">${live_stilePosts.get(0).title}</a>
                                                </figcaption>
                                            </div>
                                            <div style="overflow: hidden;height: 60px">
                                                <p style="overflow: hidden">${live_stilePosts.get(0).description}</p>
                                            </div>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${live_stilePosts.get(1).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${live_stilePosts.get(1).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${live_stilePosts.get(1).id}"
                                                                       class="catg_title">
                                                    ${live_stilePosts.get(1).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${live_stilePosts.get(2).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${live_stilePosts.get(2).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${live_stilePosts.get(2).id}"
                                                                       class="catg_title">
                                                    ${live_stilePosts.get(2).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${live_stilePosts.get(3).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${live_stilePosts.get(3).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${live_stilePosts.get(3).id}"
                                                                       class="catg_title">
                                                    ${live_stilePosts.get(3).title}</a></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </c:if>

                        <c:if test="${sortedCategories.get(3).name==sport}">
                            <div class="single_post_content_left">
                                <ul class="business_catgnav  wow fadeInDown">
                                    <li>
                                        <figure class="bsbig_fig"><a href="/post/${sportPosts.get(0).id}"
                                                                     class="featured_img">
                                            <img alt="" src="/getImage?filename=${sportPosts.get(0).pic}"> <span
                                                class="overlay"></span>
                                        </a>
                                            <div style="overflow: hidden; height: 80px">
                                                <figcaption><a
                                                        href="/post/${sportPosts.get(0).id}">${sportPosts.get(0).title}</a>
                                                </figcaption>
                                            </div>
                                            <div style="overflow: hidden;height: 60px">
                                                <p style="overflow: hidden">${sportPosts.get(0).description}</p>
                                            </div>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${sportPosts.get(1).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${sportPosts.get(1).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${sportPosts.get(1).id}"
                                                                       class="catg_title">
                                                    ${sportPosts.get(1).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${sportPosts.get(2).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${sportPosts.get(2).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${sportPosts.get(2).id}"
                                                                       class="catg_title">
                                                    ${sportPosts.get(2).title}</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown"><a href="/post/${sportPosts.get(3).id}"
                                                                             class="media-left"> <img alt=""
                                                                                                      src="/getImage?filename=${sportPosts.get(3).pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${sportPosts.get(2).id}"
                                                                       class="catg_title">
                                                    ${sportPosts.get(3).title}</a></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </c:if>


                    </div>

                    <div class="single_post_content">
                        <h2><span>Photography</span></h2>
                        <ul class="photograph_nav  wow fadeInDown">
                            <c:forEach items="${popularPostsPhotos}" var="post">
                                <li>
                                    <div class="photo_grid">
                                        <figure class="effect-layla"><a class="fancybox-buttons"
                                                                        data-fancybox-group="button"
                                                                        href="/getImage?filename=${post.pic}"
                                                                        title="${post.title}"> <img
                                                src="/getImage?filename=${post.pic}" alt=""
                                        />
                                        </a>
                                        </figure>
                                    </div>
                                </li>
                            </c:forEach>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <aside class="right_content">
                    <div class="single_sidebar">
                        <h2><span>Popular Post</span></h2>
                        <ul class="spost_nav">
                            <c:forEach items="${popularPosts}" var="post">
                                <li>
                                    <div style="overflow: hidden;height: 65px; ">

                                        <div class="media wow fadeInDown"><a
                                                href="/post/${post.id}"
                                                class="media-left"> <img alt=""
                                                                         src="/getImage?filename=${post.pic}">
                                        </a>
                                            <div class="media-body"><a href="/post/${post.id}"
                                                                       class="catg_title">
                                                    ${post.title}</a></div>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="single_sidebar">
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#category" aria-controls="home" role="tab"
                                                                      data-toggle="tab">Category</a></li>
                            <li role="presentation"><a href="#video" aria-controls="profile" role="tab"
                                                       data-toggle="tab">Video</a></li>
                        </ul>
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="category">
                                <ul>
                                    <c:forEach items="${categoryList}" var="category">
                                        <li class="cat-item"><a
                                                href="/postlist/by/category/${category.id}">${category.name}</a>
                                        </li>
                                    </c:forEach>
                                    <li class="cat-item"><a href="/post_list/photos">Photography</a></li>
                                </ul>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="video">
                                <div class="vide_area">
                                    <iframe width="100%" height="250" src="${rightPartner.videoUrl}" frameborder="0"
                                            allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single_sidebar wow fadeInDown">
                        <h2><span>Partner</span></h2>
                        <a class="sideAdd" href="${rightPartner.url}" target="_blank"><img
                                src="/getPartnerImage?filename=${rightPartner.pic}" alt=""></a></div>
                    <div class="single_sidebar wow fadeInDown">
                        <h2><span>Category Archive</span></h2>
                        <select class="catgArchive">
                            <c:forEach items="${categoryList}" var="category">

                                <option>${category.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                </aside>
            </div>
        </div>
    </section>
    <footer id="footer">
        <div class="footer_top">
            <div class="row">

                <div class="col-lg-4 col-md-4 col-sm-4" style="height: 150px">
                    <div class="footer_widget wow fadeInRightBig" style="width: 800px;margin-left: 50px">
                        <h2>Contact</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        <address>
                            Perfect News,1238 S . 123 St.Suite 25 Town City 3333,USA Phone: 123-326-789 Fax: 123-546-567
                        </address>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer_bottom">
            <p class="copyright">Copyright &copy; 2045 <a href="/home">NewsToday</a></p>
            <p class="developer">Developed By Wpfreeware</p>
        </div>
    </footer>
</div>
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/wow.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<script src="/assets/js/slick.min.js"></script>
<script src="/assets/js/jquery.li-scroller.1.0.js"></script>
<script src="/assets/js/jquery.newsTicker.min.js"></script>
<script src="/assets/js/jquery.fancybox.pack.js"></script>
<script src="/assets/js/custom.js"></script>
</body>
</html>