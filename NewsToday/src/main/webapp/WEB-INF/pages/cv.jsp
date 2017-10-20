<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Resume</title>
    <link type="text/css" rel="stylesheet" href="/assets/css/green.css"/>
    <link type="text/css" rel="stylesheet" href="/assets/css/print.css" media="print"/>
    <!--[if IE 7]>
    <link href="/assets/css/ie7.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
    <!--[if IE 6]>
    <link href="/assets/css/ie6.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
    <script type="text/javascript" src="/assets/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="/assets/js/jquery.tipsy.js"></script>
    <script type="text/javascript" src="/assets/js/cufon.yui.js"></script>
    <script type="text/javascript" src="/assets/js/scrollTo.js"></script>
    <script type="text/javascript" src="/assets/js/myriad.js"></script>
    <script type="text/javascript" src="/assets/js/jquery.colorbox.js"></script>
    <script type="text/javascript" src="/assets/js/custom1.js"></script>
    <script type="text/javascript">
        Cufon.replace('h1,h2');
    </script>
</head>
<body>
<!-- Begin Wrapper -->
<div id="wrapper">
    <div class="wrapper-top"></div>
    <div class="wrapper-mid" id="top">
        <!-- Begin Paper -->
        <div id="paper">
            <div class="paper-top"></div>
            <div id="paper-mid">
                <div class="entry">
                    <!-- Begin Image -->
                    <img class="portrait" src="/getCVImage?filename=${head.pic}" alt=""/>
                    <!-- End Image -->
                    <!-- Begin Personal Information -->
                    <div class="self">
                        <h1 class="name" style="width: auto">Rafayel Vardanyan<br><br/>
                            <span>Java Web developer</span></h1>
                        <ul>
                            <li class="ad">${head.address}</li>
                            <li class="mail">${head.email}</li>
                            <li class="tel">${head.phone}</li>
                            <li class="web">${head.github}</li>
                        </ul>
                    </div>

                </div>

                <div class="entry">
                    <h2>EDUCATION</h2>
                    <C:forEach items="${education}" var="ed">
                        <div class="content">
                            <h3>${ed.duration}</h3>
                            <p>${ed.institute} <br/>
                                <em>${ed.prof}</em><em>${ed.degree}</em></p>
                        </div>
                    </C:forEach>
                </div>

                <div class="entry">
                    <h2>SKILLS</h2>
                    <div class="content">
                        <h3>Programing languages</h3>
                        <ul class="skills">
                            <c:forEach items="${skills}" var="skill">
                                <li>${skill.name}</li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="content">
                        <h3>Programing technologies</h3>
                        <ul class="skills">
                            <c:forEach items="${technologies}" var="techn">
                                <li>${techn.name}</li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="content">
                        <h2>LANGUAGES</h2>
                        <ul class="skills">
                            <c:forEach items="${languages}" var="lang">
                                <li>${lang.language}</li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>

                <div class="entry">
                    <h2>EXPERIENCE</h2>

                    <c:forEach items="${experience}" var="exp">
                        <div class="content">
                            <h3>${exp.duration}</h3>
                            <p>${exp.company}<br/>
                                <em>${exp.position}</em></p>
                        </div>
                    </c:forEach>
                </div>

            </div>
            <div class="clear"></div>
            <div class="paper-bottom"></div>
        </div>
        <!-- End Paper -->
    </div>
    <div class="wrapper-bottom"></div>
</div>
<div><a href="/home" target="_blank" id="message" id="top-link">Home Page</a></div>
<!-- End Wrapper -->
</body>
</html>
