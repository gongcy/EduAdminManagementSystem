<%-- 
    Document   : settings
    Created on : Dec 26, 2016, 2:52:11 PM
    Author     : Administrator
--%>

<%@page import="java.util.List"%>
<%@page import="pojo.TeacherHelper"%>
<%@page import="pojo.Teacher"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    // Check if login or not
    if (session.getAttribute("id") == null) {
        response.sendRedirect("../index.jsp");
    }
    String id = (String) session.getAttribute("id");
    TeacherHelper th = new TeacherHelper();
    List<Teacher> t = th.getTeacherById(id);
    Teacher teacher = t.get(0);
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
        <style>
            .sp{
                color: skyblue;
            }
        </style>
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
                                    <label for="user-id" class="am-u-sm-3 am-form-label">ID</label>
                                    <div class="am-u-sm-9">
                                        <label for="user-id" class="am-form-label sp"><%=teacher.getTeacherid()%></label>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">Name</label>
                                    <div class="am-u-sm-9">
                                        <label for="user-name" class="am-form-label sp"><%=teacher.getTeachername()%></label>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-dept" class="am-u-sm-3 am-form-label">Department</label>
                                    <div class="am-u-sm-9">
                                        <label for="user-dept" class="am-form-label sp"><%=teacher.getDepartment()%></label>
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
