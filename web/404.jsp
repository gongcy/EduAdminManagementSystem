<%-- 
    Document   : admin-404
    Created on : Dec 23, 2016, 1:47:38 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>404 Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="keywords" content="index">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="renderer" content="webkit">
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <meta name="apple-mobile-web-app-title" content="Amaze UI" />
        <link rel="icon" type="image/png" href="resources/i/favicon.png">
        <link rel="apple-touch-icon-precomposed" href="resources/i/app-icon72x72@2x.png">
        <link rel="stylesheet" href="resources/css/amazeui.min.css"/>
        <link rel="stylesheet" href="resources/css/admin.css">
        <!--[if (gte IE 9)|!(IE)]><!-->
        <script src="resources/js/jquery.min.js"></script>
        <!--<![endif]-->
        <script src="resources/js/amazeui.min.js"></script>
        <script src="resources/js/app.js"></script>
    </head>
    <body>
        <!-- content start -->
        <div class="admin-content">
            <div class="admin-content-body">
                <div class="am-cf am-padding am-padding-bottom-0">
                    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">404</strong> / <small>That’s an error</small></div>
                </div>

                <hr/>

                <div class="am-g">
                    <div class="am-u-sm-12">
                        <h2 class="am-text-center am-text-xxxl am-margin-top-lg">404. Not Found</h2>
                        <p class="am-text-center">没有找到你要的页面</p>
                        <pre class="page-404">
          .----.
       _.'__    `.
   .--($)($$)---/#\
 .' @          /###\
 :         ,   #####
  `-..__.-' _.-\###/
        `;_:    `"'
      .'"""""`.
     /,  ya ,\\
    //  404!  \\
    `-._______.-'
    ___`. | .'___
   (______|______)
                        </pre>
                    </div>
                </div>
            </div>

            <jsp:include page="student/footer.jsp"/>
        </div>
        <!-- content end -->
    </body>
</html>
