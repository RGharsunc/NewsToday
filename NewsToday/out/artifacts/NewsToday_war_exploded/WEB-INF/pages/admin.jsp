<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>NewsFeed | Pages | Admin</title>
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
                            <li><a href="/home">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="https://github.com/RGharsunc/NewsToday" target="_blank">Git</a></li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="header_bottom">
                    <div class="logo_area"><a href="/home" class="logo"><img src="../../images/logo-main.jpg"
                                                                             alt=""></a>
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
                    <li><a href="#post_and_categories">post and categories</a></li>
                    <li><a href="#POST_POSITIONS">POST POSITIONS</a></li>
                    <li><a href="#partners">partners</a></li>
                    <li><a href="#admin">Admin</a></li>
                </ul>
            </div>
        </nav>
    </section>
    <section id="contentSection">
        <div class="row">

            <div>
                <h2 class="well" style="margin-left: 120px;margin-right: 120px;background-color: #adadad"
                    id="post_and_categories"
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
                            <input class="form-control" type="text" placeholder="Region*"
                                   name="region">
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
                            <select class="form-control" name="id1" style="overflow: hidden">
                                <c:forEach items="${posts}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select>
                            <br>
                            <select class="form-control" name="id2" style="overflow: hidden">
                                <c:forEach items="${posts}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="id3" style="overflow: hidden">
                                <c:forEach items="${posts}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </c:forEach>
                            </select><br>
                            <select class="form-control" name="id4" style="overflow: hidden">
                                <c:forEach items="${posts}" var="post">
                                    <option value="${post.id}">${post.title}</option>
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


        <div class="row" id="POST_POSITIONS">
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
                                    <option value="${post.id}">${post.title}</option>
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
                <h2 class="well" id="partners" style="margin-left: 120px;margin-right: 120px;background-color: #adadad"
                    align="center"> partners</h2>
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
                            <textarea class="form-control" cols="20" rows="10" name="prof"
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
            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 370px">
                <div class="left_content well">
                    <div class="contact_area">
                        <h2>Set Partners position</h2>
                        <form action="/admin/partner/position/top" class="contact_form well"
                              style="background-color: #f7e1b5" name="partner" method="post"
                              role="form">
                            <label for="top">top</label>
                            <select class="form-control" id="top" name="partn">
                                <c:forEach items="${partners}" var="partner">
                                    <option value="${partner.id}">${partner.name}</option>
                                </c:forEach>
                            </select><br>

                            <input type="submit" value="Confirm"><br>
                        </form>
                        <br><br>

                        <form action="/admin/partner/position/bottom" class="contact_form well"
                              style="background-color: #f7e1b5" name="partner" method="post"
                              role="form">
                            <label for="bottom">bottom</label>
                            <select class="form-control" id="bottom" name="partn">
                                <c:forEach items="${partners}" var="partner">
                                    <option value="${partner.id}">${partner.name}</option>
                                </c:forEach>
                            </select><br>
                            <input type="submit" value="Confirm"><br>
                        </form>
                        <br><br>

                        <form action="/admin/partner/position/left" class="contact_form well"
                              style="background-color: #f7e1b5" name="partner" method="post"
                              role="form">
                            <label for="left">left</label>
                            <select class="form-control" id="left" name="partn">
                                <c:forEach items="${partners}" var="partner">
                                    <option value="${partner.id}">${partner.name}</option>
                                </c:forEach>
                            </select><br>
                            <input type="submit" value="Confirm"><br>
                        </form>
                        <br><br>

                        <form action="/admin/partner/position/right" class="contact_form well"
                              style="background-color: #f7e1b5" name="partner" method="post"
                              role="form">
                            <label for="right">right</label>
                            <select class="form-control" id="right" name="partn">
                                <c:forEach items="${partners}" var="partner">
                                    <option value="${partner.id}">${partner.name}</option>
                                </c:forEach>
                            </select><br>


                            <input type="submit" value="Confirm">
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div>
                <h2 class="well" id="admin" style="margin-left: 120px;margin-right: 120px;background-color: #adadad"
                    align="center"> ADMIN</h2>
            </div>

            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 370px">
                <div class="left_content well">
                    <div class="contact_area">
                        <h2>Add ADMIN</h2>
                        <form action="/admin/user/add" class="contact_form" name="user">
                            <input class="form-control" type="text" placeholder="Email*" name="email">
                            <input class="form-control" type="password" placeholder="Password* min 8" name="password">
                            <br>
                            <input type="submit" value="Confirm">
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 370px">
                <div class="left_content well">
                    <div class="contact_area">
                        <h2>delete ADMIN</h2>

                        <form action="/admin/user/delete" class="contact_form" name="partner" method="post">
                            <select class="form-control" name="id">
                                <c:forEach items="${userList}" var="user">
                                    <option value="${user.id}">${user.email}</option>
                                </c:forEach>
                            </select><br>
                            <input type="submit" value="Confirm">
                        </form>
                    </div>
                </div>
            </div>

        </div>
        <br>
    </section>
    <footer id="footer">
        <div class="footer_bottom">
            <p class="copyright">Copyright &copy; 2045 <a href="/home">NewsFeed</a></p>
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