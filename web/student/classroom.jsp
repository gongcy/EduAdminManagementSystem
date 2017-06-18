<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List,pojo.Classroom,dao.ClassroomDAO,java.util.Iterator" %>
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
                        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">Schedule Table</strong> </div>
                    </div>
                    <hr>

<!--                    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-6"></div>

                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select data-am-selected="{btnSize: 'sm'}">
                                    <option value=""></option>
                                    <option value="option2">ClassRoomNo</option>
                                    <option value="option3">Building</option>
                                </select>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <input type="text" class="am-form-field">
                                <span class="am-input-group-btn">
                                    <button class="am-btn am-btn-default" type="button">Search</button>
                                </span>
                            </div>
                        </div>
                    </div>-->

                    <div class="am-g">
                        <div class="am-u-sm-12">
                            <form class="am-form">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-id">ClassRoomNo</th>
                                            <th class="table-title">Building</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <%
                                            Classroom classroom = new Classroom();
                                            List<Classroom> rooms = new ClassroomDAO().getAllClassroom();
                                        %>  

                                        <%
                                            for (Iterator it = rooms.iterator(); it.hasNext();) {
                                                classroom = (Classroom) it.next();

                                        %>


                                        <tr>
                                            <td><%=classroom.getClassroomno()%></td>
                                            <td><%=classroom.getBuilding()%></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                                <div class="am-cf">
                                    <%=rooms.size()%> records
                                    <div class="am-fr">
<!--                                        <ul class="am-pagination">
                                            <li class="am-disabled"><a href="#">«</a></li>
                                            <li class="am-active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li><a href="#">»</a></li>
                                        </ul>-->
                                    </div>
                                </div>
                                <hr />

                            </form>
                        </div>

                    </div>

                </div>
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
