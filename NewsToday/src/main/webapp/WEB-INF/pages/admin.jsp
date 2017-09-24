<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>NewsFeed | Pages | Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../../assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/font.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/li-scroller.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/jquery.fancybox.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/theme.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/style.css">
    <!--[if lt IE 9]>
    <script src="../../assets/js/html5shiv.min.js"></script>
    <script src="../../assets/js/respond.min.js"></script>
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
                            <li><a href="../index.html">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="contact.html">Contact</a></li>
                            <script> document.write(new Date().toLocaleDateString()); </script>

                        </ul>
                    </div>
                    <div class="header_top_right">
                        <script> document.write(new Date().toLocaleDateString()); </script>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="header_bottom">
                    <div class="logo_area"><a href="/home" class="logo"><img src="../../images/logo-main.jpg" alt=""></a>
                    </div>
                    <div class="add_banner"><a href="#"><img src="../../images/addbanner_728x90_V1.jpg" alt=""></a>
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
                    <li><a href="#">Technology</a></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                            aria-expanded="false">Mobile</a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Android</a></li>
                            <li><a href="#">Samsung</a></li>
                            <li><a href="#">Nokia</a></li>
                            <li><a href="#">Walton Mobile</a></li>
                            <li><a href="#">Sympony</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Laptops</a></li>
                    <li><a href="#">Tablets</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                    <li><a href="404.html">404 Page</a></li>
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
                            <li class="facebook"><a href="#"></a></li>
                            <li class="twitter"><a href="#"></a></li>
                            <%--<li class="flickr"><a href="#"></a></li>--%>
                            <%--<li class="pinterest"><a href="#"></a></li>--%>
                            <li class="googleplus"><a href="#"></a></li>
                            <%--<li class="vimeo"><a href="#"></a></li>--%>
                            <li class="youtube"><a href="#"></a></li>
                            <%--<li class="search"><a href="#"></a></li>--%>
                            <%--<li><input type="search"> </li>--%>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="contentSection">
        <div class="row">

            <div>
                <h2 class="well" style="margin-left: 120px;margin-right: 120px;background-color: #adadad"
                    align="center"> POSTS & CATEGORIES</h2>
            </div>
            <%--Add Post--%>


            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 370px">
                <div class="left_content well">
                    <div class="contact_area">
                        <h2>Add Post</h2>
                        <form action="/admin/post/add" class="contact_form" name="newPost" method="post"
                              enctype="multipart/form-data" role="form">
                            <input class="form-control" type="text" placeholder="Title*" name="title">
                            <textarea class="form-control" cols="20" rows="10" name="description"
                                      placeholder="Description*"></textarea>
                            <input class="form-control" type="text" placeholder="Region*" name="region">
                            <label for="category">Choose the post category</label>

                            <select class="form-control" name="categoryByCategoryId" id="category">

                                <c:forEach items="${categories}" var="category">
                                    <option value="${category.id}">${category.name}
                                    </option>
                                </c:forEach>
                            </select><br>
                            <label for="pic">Set post picture</label>
                            <div class="media">
                                <div class="media-left">
                                    <%--<img src="/images/post_image.png" class="media-object" style="width:60px">--%>
                                    <input class="form-control" id="pic" type="file" name="img"><br>
                                </div>
                            </div>
                            <input type="submit" value="Add post">
                        </form>
                    </div>
                </div>
            </div>


            <%--Choose from post list main four posts--%>


            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 370px">

                <div class="left_content well">
                    <div class="contact_area">
                        <h2>Choose from post list main four posts</h2>
                        <form action="/admin/post/set/main-position" class="contact_form" method="post">

                            <select class="form-control" name="id1">
                                <c:forEach items="${posts}" var="post">
                                    <option value="${post.id}">${post.title.substring(0,30)}${"..."}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="id2">
                                <c:forEach items="${posts}" var="post">
                                    <option value="${post.id}">${post.title.substring(0,30)}${"..."}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="id3">
                                <c:forEach items="${posts}" var="post">
                                    <option value="${post.id}">${post.title.substring(0,30)}${"..."}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="id4">
                                <c:forEach items="${posts}" var="post">
                                    <option value="${post.id}">${post.title.substring(0,30)}${"..."}</option>
                                </c:forEach>
                            </select><br>
                            <input type="submit" value="Confirm">
                        </form>
                    </div>
                    </aside>
                </div>
            </div>


            <%--Choose categories position--%>


            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 370px">

                <div class="left_content well">
                    <div class="contact_area">
                        <h2>Choose categories position</h2>
                        <form action="/admin/category/set/positions" class="contact_form" method="post">

                            <select class="form-control" name="category1">
                                <c:forEach items="${categories}" var="category">
                                    <option value="${category.id}">${category.name}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="category2">
                                <c:forEach items="${categories}" var="category">
                                    <option value="${category.id}">${category.name}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="category3">
                                <c:forEach items="${categories}" var="category">
                                    <option value="${category.id}">${category.name}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="category4">
                                <c:forEach items="${categories}" var="category">
                                    <option value="${category.id}">${category.name}</option>
                                </c:forEach>
                            </select><br>
                            <input type="submit" value="Confirm">
                        </form>
                    </div>
                    <%--</aside>--%>
                </div>
            </div>
        </div>
        <br>


        <%--POST POSITIONS BY CATEGORY AREAS--%>


        <div class="row">
            <div>
                <h2 class="well" style="margin-left: 120px;margin-right: 120px;background-color: #adadad"
                    align="center"> SET POST POSITIONS BY CATEGORY AREAS</h2>
            </div>

            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 554px">

                <div class="left_content well">
                    <div class="contact_area">
                        <h2>politic</h2>
                        <form action="/admin/post/set/positions/in/politic" class="contact_form" method="post">

                            <select class="form-control" name="post1">
                                <c:forEach items="${postsForDatePolitic}" var="post">
                                    <option value="${post.id}" >${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="post2">
                                <c:forEach items="${postsForDatePolitic}" var="post">
                                    <option value="${post.id}" style=" overflow: hidden;">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="post3">
                                <c:forEach items="${postsForDatePolitic}" var="post">
                                    <option value="${post.id}" style=" overflow: hidden;">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="post4">
                                <c:forEach items="${postsForDatePolitic}" var="post">
                                    <option value="${post.id}" style=" overflow: hidden;">${post.title}</option>
                                </c:forEach>
                            </select><br>

                            <input type="submit" value="Confirm">
                        </form>
                    </div>
                    <%--</aside>--%>
                </div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 554px">

                <div class="left_content well">
                    <div class="contact_area">
                        <h2>business</h2>
                        <form action="/admin/post/set/positions/in/business" class="contact_form" method="post">

                            <select class="form-control" name="post1">
                                <c:forEach items="${postsForDateBusiness}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="post2">
                                <c:forEach items="${postsForDateBusiness}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="post3">
                                <c:forEach items="${postsForDateBusiness}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="post4">
                                <c:forEach items="${postsForDateBusiness}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>

                            <input type="submit" value="Confirm">
                        </form>
                    </div>
                    <%--</aside>--%>
                </div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 554px">

                <div class="left_content well">
                    <div class="contact_area">
                        <h2>sport</h2>

                        <form action="/admin/post/set/positions/in/sport" class="contact_form" method="post">

                            <select class="form-control" name="post1">
                                <c:forEach items="${postsForDateSport}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="post2">
                                <c:forEach items="${postsForDateSport}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="post3">
                                <c:forEach items="${postsForDateSport}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="post4">
                                <c:forEach items="${postsForDateSport}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <input type="submit" value="Confirm">
                        </form>
                    </div>
                    <%--</aside>--%>
                </div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 554px">

                <div class="left_content well">
                    <div class="contact_area">
                        <h2>live-stile</h2>
                        <form action="/admin/post/set/positions/in/live_stile" class="contact_form" method="post">

                            <select class="form-control" name="post1">
                                <c:forEach items="${postsForDateLive_Stile}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="post2">
                                <c:forEach items="${postsForDateLive_Stile}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="post3">
                                <c:forEach items="${postsForDateLive_Stile}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="post4">
                                <c:forEach items="${postsForDateLive_Stile}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <input type="submit" value="Confirm">
                        </form>
                    </div>
                    <%--</aside>--%>
                </div>
            </div>
        </div>
 <div class="row">
            <div>
                <h2 class="well" style="margin-left: 120px;margin-right: 120px;background-color: #adadad"
                    align="center"> SET POST POSITIONS BY CATEGORY AREAS</h2>
            </div>

     <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 370px">
         <div class="left_content well">
             <div class="contact_area">
                 <h2>Add Partner</h2>
                 <form action="/admin/partner/add" class="contact_form" name="partner" method="post"
                       enctype="multipart/form-data" role="form">
                     <input class="form-control" type="text" placeholder="Name*" name="name">
                     <input class="form-control" type="text" placeholder="URL*" name="url">
                     <input class="form-control" type="text" placeholder="Video URL*" name="video">
                     <input class="form-control" type="text" placeholder="Title*" name="title">
                     <textarea class="form-control" cols="20" rows="10" name="description"
                               placeholder="Description*"></textarea>
                     <label for="image">Set partner picture</label>
                     <div class="media">
                         <div class="media-left">
                             <input class="form-control" id="image" type="file" name="img"><br>
                         </div>
                     </div>
                     <input type="submit" value="Add partner">
                 </form>
             </div>
         </div>
     </div>
            <%--<div class="col-lg-8 col-md-8 col-sm-8 " style="width: 554px">--%>

                <%--<div class="left_content well">--%>
                    <%--<div class="contact_area">--%>
                        <%--<h2>business</h2>--%>
                        <%--<form action="/admin/post/set/positions/in/business" class="contact_form" method="post">--%>

                            <%--<select class="form-control" name="post1">--%>
                                <%--<c:forEach items="${postsForDateBusiness}" var="post">--%>
                                    <%--<option value="${post.id}">${post.title}</option>--%>
                                <%--</c:forEach>--%>
                            <%--</select><br>--%>
                            <%--<select class="form-control" name="post2">--%>
                                <%--<c:forEach items="${postsForDateBusiness}" var="post">--%>
                                    <%--<option value="${post.id}">${post.title}</option>--%>
                                <%--</c:forEach>--%>
                            <%--</select><br>--%>
                            <%--<select class="form-control" name="post3">--%>
                                <%--<c:forEach items="${postsForDateBusiness}" var="post">--%>
                                    <%--<option value="${post.id}">${post.title}</option>--%>
                                <%--</c:forEach>--%>
                            <%--</select><br>--%>
                            <%--<select class="form-control" name="post4">--%>
                                <%--<c:forEach items="${postsForDateBusiness}" var="post">--%>
                                    <%--<option value="${post.id}">${post.title}</option>--%>
                                <%--</c:forEach>--%>
                            <%--</select><br>--%>

                            <%--<input type="submit" value="Confirm">--%>
                        <%--</form>--%>
                    <%--</div>--%>
                    <%--&lt;%&ndash;</aside>&ndash;%&gt;--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-lg-8 col-md-8 col-sm-8 " style="width: 554px">--%>

                <%--<div class="left_content well">--%>
                    <%--<div class="contact_area">--%>
                        <%--<h2>sport</h2>--%>

                        <%--<form action="/admin/post/set/positions/in/sport" class="contact_form" method="post">--%>

                            <%--<select class="form-control" name="post1">--%>
                                <%--<c:forEach items="${postsForDateSport}" var="post">--%>
                                    <%--<option value="${post.id}">${post.title}</option>--%>
                                <%--</c:forEach>--%>
                            <%--</select><br>--%>
                            <%--<select class="form-control" name="post2">--%>
                                <%--<c:forEach items="${postsForDateSport}" var="post">--%>
                                    <%--<option value="${post.id}">${post.title}</option>--%>
                                <%--</c:forEach>--%>
                            <%--</select><br>--%>
                            <%--<select class="form-control" name="post3">--%>
                                <%--<c:forEach items="${postsForDateSport}" var="post">--%>
                                    <%--<option value="${post.id}">${post.title}</option>--%>
                                <%--</c:forEach>--%>
                            <%--</select><br>--%>
                            <%--<select class="form-control" name="post4">--%>
                                <%--<c:forEach items="${postsForDateSport}" var="post">--%>
                                    <%--<option value="${post.id}">${post.title}</option>--%>
                                <%--</c:forEach>--%>
                            <%--</select><br>--%>
                            <%--<input type="submit" value="Confirm">--%>
                        <%--</form>--%>
                    <%--</div>--%>
                    <%--&lt;%&ndash;</aside>&ndash;%&gt;--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-lg-8 col-md-8 col-sm-8 " style="width: 554px">--%>

                <%--<div class="left_content well">--%>
                    <%--<div class="contact_area">--%>
                        <%--<h2>live-stile</h2>--%>
                        <%--<form action="/admin/post/set/positions/in/live_stile" class="contact_form" method="post">--%>

                            <%--<select class="form-control" name="post1">--%>
                                <%--<c:forEach items="${postsForDateLive_Stile}" var="post">--%>
                                    <%--<option value="${post.id}">${post.title}</option>--%>
                                <%--</c:forEach>--%>
                            <%--</select><br>--%>
                            <%--<select class="form-control" name="post2">--%>
                                <%--<c:forEach items="${postsForDateLive_Stile}" var="post">--%>
                                    <%--<option value="${post.id}">${post.title}</option>--%>
                                <%--</c:forEach>--%>
                            <%--</select><br>--%>
                            <%--<select class="form-control" name="post3">--%>
                                <%--<c:forEach items="${postsForDateLive_Stile}" var="post">--%>
                                    <%--<option value="${post.id}">${post.title}</option>--%>
                                <%--</c:forEach>--%>
                            <%--</select><br>--%>
                            <%--<select class="form-control" name="post4">--%>
                                <%--<c:forEach items="${postsForDateLive_Stile}" var="post">--%>
                                    <%--<option value="${post.id}">${post.title}</option>--%>
                                <%--</c:forEach>--%>
                            <%--</select><br>--%>
                            <%--<input type="submit" value="Confirm">--%>
                        <%--</form>--%>
                    <%--</div>--%>
                    <%--&lt;%&ndash;</aside>&ndash;%&gt;--%>
                <%--</div>--%>
            <%--</div>--%>
        </div>
        <br>
    </section>
    <footer id="footer">
        <%--<div class="footer_top">--%>
        <%--<div class="row">--%>
        <%--<div class="col-lg-4 col-md-4 col-sm-4">--%>
        <%--<div class="footer_widget wow fadeInLeftBig">--%>
        <%--<h2>Flickr Images</h2>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-lg-4 col-md-4 col-sm-4">--%>
        <%--<div class="footer_widget wow fadeInDown">--%>
        <%--<h2>Tag</h2>--%>
        <%--<ul class="tag_nav">--%>
        <%--<li><a href="#">Games</a></li>--%>
        <%--<li><a href="#">Sports</a></li>--%>
        <%--<li><a href="#">Fashion</a></li>--%>
        <%--<li><a href="#">Business</a></li>--%>
        <%--<li><a href="#">Life &amp; Style</a></li>--%>
        <%--<li><a href="#">Technology</a></li>--%>
        <%--<li><a href="#">Photo</a></li>--%>
        <%--<li><a href="#">Slider</a></li>--%>
        <%--</ul>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-lg-4 col-md-4 col-sm-4">--%>
        <%--<div class="footer_widget wow fadeInRightBig">--%>
        <%--<h2>Contact</h2>--%>
        <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut--%>
        <%--labore et dolore magna aliqua Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>--%>
        <%--<address>--%>
        <%--Perfect News,1238 S . 123 St.Suite 25 Town City 3333,USA Phone: 123-326-789 Fax: 123-546-567--%>
        <%--</address>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <div class="footer_bottom">
            <p class="copyright">Copyright &copy; 2045 <a href="/home">NewsFeed</a></p>
            <p class="developer">Developed By Wpfreeware</p>
        </div>
    </footer>
</div>
<script src="../../assets/js/jquery.min.js"></script>
<script src="../../assets/js/wow.min.js"></script>
<script src="../../assets/js/bootstrap.min.js"></script>
<script src="../../assets/js/slick.min.js"></script>
<script src="../../assets/js/jquery.li-scroller.1.0.js"></script>
<script src="../../assets/js/jquery.newsTicker.min.js"></script>
<script src="../../assets/js/jquery.fancybox.pack.js"></script>
<script src="../../assets/js/custom.js"></script>
</body>
</html>