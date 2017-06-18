<%-- 
    Document   : logout
    Created on : Dec 27, 2016, 3:22:16 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("../index.jsp");
%>