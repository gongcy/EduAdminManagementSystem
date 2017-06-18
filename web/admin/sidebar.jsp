<%-- 
    Document   : sidebar
    Created on : Dec 23, 2016, 1:59:36 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- sidebar start -->
<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
    <div class="am-offcanvas-bar admin-offcanvas-bar">
        <ul class="am-list admin-sidebar-list">
            <li><a href="index.jsp"><span class="am-icon-home"></span> Home</a></li>
            <li class="admin-parent">
                <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-file"></span> Management <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
                    <li><a href="classinfo.jsp" class="am-cf"><span class="am-icon-check"></span> Class Information<span class="am-fr am-margin-right"></span></a></li>
                    <li><a href="stuinfo.jsp"><span class="am-icon-puzzle-piece"></span> Student Information</a></li>
                    <li><a href="tchinfo.jsp"><span class="am-icon-puzzle-piece"></span> Teacher Information</a></li>
                    <li><a href="classroominfo.jsp"><span class="am-icon-th"></span> Classroom Information<span class="am-badge am-badge-secondary am-margin-right am-fr"></span></a></li>
                    <li><a href="syllabus.jsp"><span class="am-icon-calendar"></span> Syllabus</a></li>
                </ul>
            </li>
            <li><a href="settings.jsp"><span class="am-icon-puzzle-piece"></span> Settings</a></li>
            <!--<li><a href="search.jsp"><span class="am-icon-table"></span> Search</a></li>-->
            <!--<li><a href="admin-form.html"><span class="am-icon-pencil-square-o"></span> 表单</a></li>-->
            <li><a href="logout.jsp"><span class="am-icon-sign-out"></span> Log out</a></li>
        </ul>

        <div class="am-panel am-panel-default admin-sidebar-panel">
            <div class="am-panel-bd">
                <p><span class="am-icon-bookmark"></span> Notice</p>
                <p>Where there is a will, there is a way.—— Crazy Human</p>
            </div>
        </div>

        <div class="am-panel am-panel-default admin-sidebar-panel">
            <div class="am-panel-bd">
                <p><span class="am-icon-tag"></span> wiki</p>
                <p>Welcome to the Student Management System!</p>
            </div>
        </div>
    </div>
</div>
<!-- sidebar end -->