<%-- 
    Document   : header
    Created on : Dec 23, 2016, 2:12:38 PM
    Author     : Administrator
--%>

<%@page import="pojo.TeacherHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        <strong>Student</strong> <small>Management System Background</small>
    </div>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
            <!--<li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>-->
            <li class="am-dropdown" data-am-dropdown>
                <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
                    <span class="am-icon-users"></span> <%=(String) session.getAttribute("id")%> <span class="am-icon-caret-down"></span>
                </a>
                <ul class="am-dropdown-content">s
                    <li><a href="details.jsp"><span class="am-icon-user"></span> Details</a></li>
                    <li><a href="settings.jsp"><span class="am-icon-cog"></span> Settings</a></li>
                    <li><a href="logout.jsp"><span class="am-icon-power-off"></span> Exit</a></li>
                </ul>
            </li>
            <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">Full Screen</span></a></li>
        </ul>
    </div>
</header>
