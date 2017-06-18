<%-- 
    Document   : classroominfo
    Created on : Dec 27, 2016, 2:03:46 PM
    Author     : Administrator
--%>

<%@page import="java.util.List"%>
<%@page import="pojo.ClassroomHelper"%>
<%@page import="pojo.Classroom"%>
<%@page import="java.util.Iterator"%>
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
                condition = $('#txtCondition').val();
                $("#resultdiv").load("search_croom.jsp?method=" + method + "&condition=" + condition);
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
                        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">Classroom </strong>  <small>Information</small></div>
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
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select data-am-selected="{btnSize: 'sm'}" id="smethod" name="selectCondition">
                                    <option value=""></option>
                                    <option value="crid">ID</option>
                                    <option value="crb">Building</option>
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
                    </div>

                    <div class="am-g" id="resultdiv">
                        <div class="am-u-sm-12">
                            <!--<form class="am-form">-->
                                <table id="table" class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-check"><input type="checkbox" /></th>
                                            <th class="table-id">Classroom ID</th>
                                            <th class="table-building">Building</th>
                                            <th class="table-set">Operation</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <td></td>

                                    <form action="classroom_action.jsp">
                                        <td><input type="text" name="classroom"/></td>
                                        <td><input type="text" name="building"/></td>
                                        <td><input class="am-btn am-btn-default am-btn-xs am-hide-sm-only" type="submit" value="submit"/></td>
                                    </form>
                                    <%
                                        ClassroomHelper dh = new ClassroomHelper();
                                        List<Classroom> t = dh.displayAllClassrooms();
                                        Classroom tch = new Classroom();
                                        for (Iterator it = t.iterator(); it.hasNext();) {
                                            tch = (Classroom) it.next();
                                    %>
                                    <tr>
                                        <td><input type="checkbox" /></td>
                                        <td><%=tch.getClassroomno()%></td>
                                        <td><%=tch.getBuilding()%></td>
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
                                </div>
                            <!--</form>-->
                        </div>

                    </div>
                </div>

                <jsp:include page="footer.jsp"/>

            </div>
            <!-- content end -->
        </div>
    </body>
</html>
