<%-- 
    Document   : search_process
    Created on : Dec 27, 2016, 7:35:35 PM
    Author     : Administrator
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="pojo.Teacher"%>
<%@page import="pojo.TeacherHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String method = request.getParameter("method");
    String condition = request.getParameter("condition");
    TeacherHelper dh = new TeacherHelper();
    List<Teacher> t;
    String key = "";
    if (method.equals("tid")) {
        key = "teacherid";
    } else if (method.equals("tname")) {
        key = "teachername";
    } else if (method.equals("tdept")) {
        key = "department";
    }
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<div class="am-u-sm-12">
    <form class="am-form">
        <table id="table" class="am-table am-table-striped am-table-hover table-main">
            <thead>
                <tr>
                    <th class="table-check"><input type="checkbox" /></th>
                    <th class="table-id">ID</th>
                    <th class="table-name">Name</th>
                    <!--<th class="table-college">College</th>-->
                    <th class="table-dept am-hide-sm-only">Department</th>
                    <th class="table-set">Operation</th>
                </tr>
            </thead>
            <tbody>
                <%
                    t = dh.searchTeachers(key, condition);
                    Teacher tch = new Teacher();
                    for (Iterator it = t.iterator(); it.hasNext();) {
                        tch = (Teacher) it.next();
                %>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><%=tch.getTeacherid()%></td>
                    <td><a><%=tch.getTeachername()%></a></td>
                    <td><%=tch.getDepartment()%></td>
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
<!--            <div class="am-fr">
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