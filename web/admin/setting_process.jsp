<%-- 
    Document   : setting_process
    Created on : Dec 26, 2016, 5:41:34 PM
    Author     : Administrator
--%>

<%@page import="pojo.Teacher"%>
<%@page import="pojo.TeacherHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = (String) session.getAttribute("id");
    try {
        TeacherHelper dhelper = new TeacherHelper();
        if (request.getParameter("tpwd").equals(request.getParameter("tpwd2"))) {
            Teacher t = new Teacher();
            t.setTeacherid(id);
            t.setTeacherpassword(new encode.MD5().getMD5ofStr(request.getParameter("tpwd")));
            t.setTeachername(request.getParameter("tname"));
            t.setDepartment(request.getParameter("tdept"));
            if (!dhelper.updateTeacher(t)) {
                out.println("<script>alert('Update failed!');</script>");
            }
            response.sendRedirect("settings.jsp");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }


%>
