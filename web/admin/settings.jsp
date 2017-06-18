<%-- 
    Document   : user
    Created on : Dec 23, 2016, 6:55:56 PM
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    // Check if login or not
    if (session.getAttribute("id") == null) {
        response.sendRedirect("../index.jsp");
    }
%>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="keywords" content="index">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="renderer" content="webkit">
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <meta name="apple-mobile-web-app-title" content="Amaze UI" />
        <link rel="icon" type="image/png" href="../resources/i/favicon.png">
        <link rel="apple-touch-icon-precomposed" href="../resources/i/app-icon72x72@2x.png">
        <link rel="stylesheet" href="../resources/css/amazeui.min.css"/>
        <link rel="stylesheet" href="../resources/css/admin.css">
        <!--[if (gte IE 9)|!(IE)]><!-->
        <script src="../resources/js/jquery.min.js"></script>
        <!--<![endif]-->
        <script src="../resources/js/amazeui.min.js"></script>
        <script src="../resources/js/app.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="am-cf admin-main">
            <jsp:include page="sidebar.jsp"/>
            <!-- content start -->
            <div class="admin-content">
                <div class="admin-content-body">
                    <div class="am-cf am-padding am-padding-bottom-0">
                        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">Personal Data</strong> / <small>Personal information</small></div>
                    </div>

                    <hr/>

                    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">

                        </div>

                        <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
                            <form class="am-form am-form-horizontal" action="setting_process.jsp" method="post">
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">Name</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" id="user-name" name="tname" placeholder="Please input your Name">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-pwd" class="am-u-sm-3 am-form-label">Password</label>
                                    <div class="am-u-sm-9">
                                        <input type="password" id="user-pwd" name="tpwd" placeholder="Please input your Password">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-pwd" class="am-u-sm-3 am-form-label">Confirm Password</label>
                                    <div class="am-u-sm-9">
                                        <input type="password" id="user-pwd" name="tpwd2" placeholder="Please confirm your Password">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-dept" class="am-u-sm-3 am-form-label">Department</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" id="user-dept" name="tdept" placeholder="Please input your Department">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <input type="submit" class="am-btn am-btn-primary" value="Save Changes"/>
                                        <input type="reset" class="am-btn am-btn-primary" value="Reset"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content end -->
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
