<%-- 
    Document   : stuinfo
    Created on : Dec 27, 2016, 2:03:07 PM
    Author     : Administrator
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="pojo.Student"%>
<%@page import="pojo.StudentHelper"%>
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
        <script type="text/javascript">
            function editClick() {
                o = document.getElementById('name');
                if (o.childNodes[0].value) {
                    o.innerHTML = o.value;
                } else {
                    o.innerHTML = "<input type='text' id='temp' value='" + o.innerHTML + "' />";
                }
                return false;
            }

            function saveClick() {
                document.getElementById('name').innerHTML = document.getElementById('demo').value;
                return false;
            }

            function deleteClick() {

            }
            function getResult() {
                $.AMUI.progress.start();
                method = $('#smethod option:selected').val();
//                alert(method);
                condition = $('#txtCondition').val();
                $("#resultdiv").load("search_stu.jsp?method=" + method + "&condition=" + condition);
                $.AMUI.progress.done();
            }
        </script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="am-cf admin-main">
            <jsp:include page="sidebar.jsp"/>
            <!-- content start -->
            <div class="admin-content">
                <div class="admin-content-body">
                    <div class="am-cf am-padding am-padding-bottom-0">
                        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">Student </strong>  <small>Information</small></div>
                    </div>

                    <hr>

                    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-6">
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> New</button>
                                    <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> Save</button>
                                    <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> Delete</button>
                                </div>
                            </div>
                        </div>
                        <!--<form action="" name="formSearch" method="get">-->
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select data-am-selected="{btnSize: 'sm'}" id="smethod" name="selectCondition">
                                    <option value=""></option>
                                    <option value="sid">Student ID</option>
                                    <option value="sname">Name</option>
                                    <option value="sgender">Gender</option>
                                    <option value="sidno">ID</option>
                                    <option value="sclass">Class Name</option>
                                </select>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <input type="text" name="txtCondition" id="txtCondition" class="am-form-field">
                                <span class="am-input-group-btn">
                                    <Button class="am-btn am-btn-default" onclick="getResult()">Search</button>
                                </span>
                            </div>
                        </div>
                        <!--</form>-->
                    </div>

                    <div class="am-g" id="resultdiv">
                        <div class="am-u-sm-12">
                            <form class="am-form">
                                <table id="table" class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-check"><input type="checkbox" /></th>
                                            <th class="table-sid">Student ID</th>
                                            <th class="table-name">Name</th>
                                            <th class="table-gender">Gender</th>
                                            <th class="table-college">ID</th>
                                            <th class="table-dept am-hide-sm-only">Address</th>
                                            <th class="table-dept am-hide-sm-only">Data Of Birth</th>
                                            <th class="table-dept am-hide-sm-only">Class Name</th>
                                            <th class="table-set">Operation</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            StudentHelper dh = new StudentHelper();
                                            List<Student> t = dh.displayAllStudents();
                                            Student stu = new Student();
                                            for (Iterator it = t.iterator(); it.hasNext();) {
                                                stu = (Student) it.next();
                                        %>
                                        <tr>
                                            <td><input type="checkbox" /></td>
                                            <td><%=stu.getStuno()%></td>
                                            <td><a><%=stu.getStuname()%></a></td>
                                            <td><%=stu.getStugender()%></td>
                                            <td><%=stu.getStuidno()%></td>
                                            <td><%=stu.getStuaddress()%></td>
                                            <td><%=stu.getStudob()%></td>
                                            <td><%=stu.getClassname()%></td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <button onclick="editClick()" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> Edit</button>
                                                        <button onclick="saveClick()" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-save"></span> Save</button>
                                                        <button onclick="deleteClick()" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> Delete</button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                                <div class="am-cf">
                                    A total of <%=t.size()%> records.
                                    <!--                                    <div class="am-fr">
                                                                            <ul class="am-pagination">
                                                                                <li class="am-disabled"><a href="#">«</a></li>
                                                                                <li class="am-active"><a href="#">1</a></li>
                                                                                <li><a href="#">2</a></li>
                                                                                <li><a href="#">3</a></li>
                                                                                <li><a href="#">4</a></li>
                                                                                <li><a href="#">5</a></li>
                                                                                <li><a href="#">»</a></li>
                                                                            </ul>
                                                                        </div>-->
                                </div>
                            </form>
                        </div>

                    </div>
                </div>

                <jsp:include page="footer.jsp"/>

            </div>
    </body>
</html>
