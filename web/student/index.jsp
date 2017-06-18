<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <title>Student|Information</title>
        <meta name="description" content="Student Information index"/>
        <meta name="keywords" content="form"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="renderer" content="webkit"/>
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <link rel="icon" type="image/png" href="../resources/i/favicon.png"/>
        <link rel="stylesheet" href="../resources/css/amazeui.min.css"/>
        <link rel="stylesheet" href="../resources/css/admin.css">

    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="am-cf admin-main">
            <jsp:include page="sidebar.jsp"/>
            <!-- content start -->

            <!-- content end -->
            <%@include file="footer.jsp" %>
        </div>

        <a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>


        <!--[if lt IE 9]>
        <script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
        <script src="assets/js/amazeui.ie8polyfill.min.js"></script>
        <![endif]-->

        <!--[if (gte IE 9)|!(IE)]><!-->
        <script src="../resources/js/jquery.min.js"></script>
        <!--<![endif]-->
        <script src="../resources/js/amazeui.min.js"></script>
        <script src="../resources/js/app.js"></script>
    </body>
</html>
