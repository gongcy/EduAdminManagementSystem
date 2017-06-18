<%-- 
    Document   : processInfo
    Created on : 2016-12-27, 14:20:59
    Author     : Third
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String stuid = (String) session.getAttribute("stuno");
            String pwd = new encode.MD5().getMD5ofStr(request.getParameter("txtpwd"));

            try {
                new dao.StuDAO().changepwd(stuid, pwd);
            } catch (Exception e) {
                e.printStackTrace();
            }
            out.println("<script>alert('Change succeed!');<script>");
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
