<%-- 
    Document   : classroom_action
    Created on : Dec 30, 2016, 10:03:17 AM
    Author     : Administrator
--%>

<%@page import="pojo.Classroom"%>
<%@page import="pojo.ClassroomHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String classroom = request.getParameter("classroom");
    String building = request.getParameter("building");
    ClassroomHelper dh = new ClassroomHelper();
    Classroom tch = new Classroom(classroom, building);
    dh.insertClassroom(tch);
    response.sendRedirect("classroominfo.jsp");
%>
