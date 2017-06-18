<%-- 
    Document   : index
    Created on : Dec 28, 2016, 2:29:58 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="keywords" content="index">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="renderer" content="webkit">
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <meta name="apple-mobile-web-app-title" content="Amaze UI" />
        <link rel="icon" type="image/png" href="resources/i/favicon.png">
        <link rel="apple-touch-icon-precomposed" href="resources/i/app-icon72x72@2x.png">
        <link rel="stylesheet" href="resources/css/amazeui.min.css"/>
        <link rel="stylesheet" href="resources/css/admin.css">
        <!--[if (gte IE 9)|!(IE)]><!-->
        <script src="resources/js/jquery.min.js"></script>
        <!--<![endif]-->
        <script src="resources/js/amazeui.min.js"></script>
        <script src="resources/js/app.js"></script>
        <style>

        </style>
    </head>
    <body>
        <header class="am-topbar">
            <h1 class="am-topbar-brand">
                <a href="index.jsp"><strong>Student Management</strong> <small>System</small></a>
            </h1>

            <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
                    data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">Navigation Change</span> <span
                    class="am-icon-bars"></span></button>

            <div class="am-collapse am-topbar-collapse am-topbar-right" id="doc-topbar-collapse">
                <ul class="am-nav am-nav-pills am-topbar-nav">
                    <li class="am-active"><a href="index.jsp">Home</a></li>
                    <li><a href="adminlogin.xhtml">Manager/Teacher</a></li>
                    <li><a href="Stu_login.xhtml">Student</a></li>
                </ul>
            </div>
        </header>
        <div style="height: 700px;margin-bottom: 200px;padding-bottom: 100px; " class="am-slider am-slider-default" data-am-flexslider="{playAfterPaused: 100}">
            <ul class="am-slides">
                <li>
                    <img style="z-index: -1" src="resources/i/s4.jpg" />
                </li>
                <li><img style="z-index: -1" src="resources/i/s1.jpg" />
                <li><img style="z-index: -1" src="resources/i/s2.jpg" />
                <li>
                    <img style="z-index: -1" src="resources/i/s3.jpg" />
                </li>
            </ul>

        </div>
    </body>
</html>
