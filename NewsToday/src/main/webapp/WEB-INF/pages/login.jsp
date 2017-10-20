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
                            <li><a href="https://github.com/RGharsunc/NewsToday">Git</a></li>
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
                    <li><a href="/postlist">post list</a></li>
                    <li><a href="/cv" target="_blank">my cv</a></li>
                </ul>
            </div>
        </nav>
    </section>


    <section id="contentSection" style="margin-top: 50px; margin-bottom: 50px">



        <div class="row ">
            <div class="col-lg-8 col-md-8 col-sm-8 well"
                 style="margin-left: 430px;margin-top: 30px; width: 240px; height: auto; background-color: black"><h4>${errMsg}</h4> <br>
                <form action="/login" class="contact_form" name="loginForm" method="post" style="width: 200px">

                    <input class="form-control" type="email" placeholder="Username*" name="j_username"
                           style="background-color: #ed6a12;">
                    <input class="form-control" type="password" placeholder="Password*" name="j_password"
                           style="background-color: #ed6a12"><br>

                    <input type="submit" value="LOGIN"><br><br>
                    <a class="btn  form-control" href="/reg"
                       style="background-color: #ed6a12; color: white;font-variant-caps:all-small-caps">To register
                        page</a>
                </form>

            </div>
        </div>
    </section>
    <footer id="footer">
        <div class="footer_top">
            <div class="row">

                <div class="col-lg-4 col-md-4 col-sm-4" style="height: 150px">
                    <div class="footer_widget wow fadeInRightBig" style="width: 800px;margin-left: 50px">
                        <h2>Contact</h2>
                        <p>r.gharsunc@gmail.com</p>
                        <p>+374 702 392</p>
                        <address>
                            Nubarashen Highway, 3/5 bldg., 24 apt, Yerevan, Armenia
                        </address>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer_bottom">
            <p class="copyright">Copyright &copy; 2045 NewsToday</p>
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