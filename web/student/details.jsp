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

    <%@include file="header.jsp" %>

    <jsp:include page="sidebar.jsp"/>
    <!-- content start -->
    <jsp:useBean id="student" class="jspBean.Student" scope="session" />
    <% student.setSession(session);%>
    ${student.init()}
    <div class="admin-content">
        <div class="admin-content-body">
            <div class="am-cf am-padding am-padding-bottom-0">
                <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">Personal information</strong> </div>
            </div>

            <hr/>

            <div class="am-g">
                <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
                </div>

                <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
                    <form class="am-form am-form-horizontal">
                        <div class="am-form-group">
                            <label for="stuid" class="am-u-sm-3 am-form-label">Student ID : </label>
                            <div class="am-u-sm-9" id="stuid">
                                <%=student.getStuno()%>
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="stuname" class="am-u-sm-3 am-form-label">Student Name : </label>
                            <div class="am-u-sm-9" id="stuname">
                                ${student.stuname}
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="stugender" class="am-u-sm-3 am-form-label">Student Gender : </label>
                            <div class="am-u-sm-9" id="stugender">
                                ${student.stugender}
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="stuidcard" class="am-u-sm-3 am-form-label">Student Identity Card : </label>
                            <div class="am-u-sm-9" id="stuidcard">
                                ${student.stuidno}
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="stuclass" class="am-u-sm-3 am-form-label">Student Class : </label>
                            <div class="am-u-sm-9" id="stuclass">
                                ${student.classname}
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="studob" class="am-u-sm-3 am-form-label">Date of Birth : </label>
                            <div class="am-u-sm-9" id="studob">
                                ${student.studob}
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>


    </div>

    <!-- content end -->



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

</html>
