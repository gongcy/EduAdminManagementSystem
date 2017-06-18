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
            <div class="admin-content">
                <div class="admin-content-body">
                    <div class="am-cf am-padding am-padding-bottom-0">
                        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">Change Password</strong> </div>
                    </div>

                    <hr/>

                    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
                        </div>

                        <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
                            <form class="am-form am-form-horizontal" action="processInfo.jsp">
                                <div class="am-form-group">
                                    <label for="stuchange" class="am-u-sm-3 am-form-label">Change Password : </label>
                                    <div class="am-u-sm-9" >
                                        <input id="stuchange" type="password" placeholder="Enter your new password" name="txtpwd"/>

                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <input type="submit" class="am-btn am-btn-primary" value="Save"  />
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content end -->

        </div>

        <a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>
        <%@include file="footer.jsp" %>

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
