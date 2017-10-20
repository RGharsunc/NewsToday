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
                            <li><a href="/logout">LOGOUT</a></li>
                            <li><a href="https://github.com/RGharsunc/NewsToday" target="_blank">Git</a></li>
                        </ul>
                    </div>
                    <div class="header_top_right">
                        <script> document.write(new Date().toLocaleDateString()); </script>
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
                </ul>
            </div>
        </nav>
    </section>

    <section id="contentSection">
        <div class="row">

            <div>
                <h2 class="well" style="margin-left: 120px;margin-right: 120px;background-color: #adadad"
                    id="post_and_categories"
                    align="center"> ADD cv DATA</h2>
            </div>


            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 370px">
                <div class="left_content well">
                    <div class="contact_area">
                        <h2>ADD cv DATA</h2>
                        <form action="/cv/header/add" class="contact_form" name="header" method="post"
                              enctype="multipart/form-data" role="form">
                            <input class="form-control" type="text" placeholder="Address*" name="address">

                            <input class="form-control" type="email" placeholder="Email*"
                                   name="email">

                            <input class="form-control" type="text" placeholder="Phone*"
                                   name="phone">

                            <input class="form-control" type="url" placeholder="GitHub Url*"
                                   name="github"><br><br>

                            <label for="pic">Set Your picture</label>
                            <div class="media">

                                <div class="media-left">
                                    <input class="form-control" id="pic" type="file" name="img"><br>
                                </div>

                            </div>
                            <input type="submit" value="SUBMIT">
                        </form>
                    </div>
                </div>
            </div>


            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 370px">

                <div class="left_content well">
                    <div class="contact_area">
                        <h2>ADD experience data</h2>
                        <form action="/cv/experience/add" class="contact_form" name="education">
                            <input class="form-control" type="text" placeholder="Duration*"
                                   name="duration">
                            <input class="form-control" type="text" placeholder="Company*"
                                   name="company">
                            <input class="form-control" type="text" placeholder="Position*"
                                   name="position">

                            <input type="submit" value="SUBMIT">
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 370px">

                <div class="left_content well">
                    <div class="contact_area">
                        <h2>ADD education data</h2>
                        <form action="/cv/education/add" class="contact_form" name="education">
                            <input class="form-control" type="text" placeholder="Duration*"
                                   name="duration">
                            <input class="form-control" type="text" placeholder="Institute*"
                                   name="institute">
                            <input class="form-control" type="text" placeholder="Profession*"
                                   name="prof">
                            <input class="form-control" type="text" placeholder="Degree*"
                                   name="degree">
                            <input type="submit" value="SUBMIT">
                        </form>
                    </div>
                </div>
            </div>




            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 370px">

                <div class="left_content well">
                    <div class="contact_area">
                        <h2>ADD Technology</h2>
                        <form action="/cv/techn/add" class="contact_form" name="techn">
                            <input class="form-control" type="text" placeholder="Technology*"
                                   name="name">
                            <input type="submit" value="SUBMIT">
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 370px">

                <div class="left_content well">
                    <div class="contact_area">
                        <h2>ADD LANGUAGE</h2>
                        <form action="/cv/language/add" class="contact_form" name="languages">
                            <input class="form-control" type="text" placeholder="Language*"
                                   name="language">
                            <input type="submit" value="SUBMIT">
                        </form>
                    </div>
                </div>
            </div>




            <div class="col-lg-8 col-md-8 col-sm-8 " style="width: 370px">

                <div class="left_content well">
                    <div class="contact_area">
                        <h2>ADD SKILLS</h2>
                        <form action="/cv/skill/add" class="contact_form" name="education">
                            <input class="form-control" type="text" placeholder="Skill*"
                                   name="name">
                            <input type="submit" value="SUBMIT">
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