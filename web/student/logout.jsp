<%-- 
    Document   : logout
    Created on : 2016-12-27, 19:01:24
    Author     : Third
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("../index.jsp");
%>
