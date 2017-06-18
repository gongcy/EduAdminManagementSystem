<%-- 
    Document   : search_process
    Created on : Dec 27, 2016, 7:35:35 PM
    Author     : Administrator
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="pojo.Classroom"%>
<%@page import="pojo.ClassroomHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String method = request.getParameter("method");
    String condition = request.getParameter("condition");
    ClassroomHelper dh = new ClassroomHelper();
    List<Classroom> t;
    String key = "";
    if (method.equals("crid")) {
        key = "ClassRoomNo";
    } else if (method.equals("crb")) {
        key = "building";
    }
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<div class="am-u-sm-12">
    <form class="am-form">
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
                <%
                    t = dh.searchClassrooms(key, condition);
                    Classroom stu = new Classroom();
                    for (Iterator it = t.iterator(); it.hasNext();) {
                        stu = (Classroom) it.next();
                %>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><%=stu.getClassroomno()%></td>
                    <td><%=stu.getBuilding()%></td>
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