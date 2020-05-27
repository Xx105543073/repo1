<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<!-- 页面头部 -->
<header class="main-header">

    <!-- Logo -->
    <div href="all-admin-index.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>论坛系统</b></span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg">论坛系统</span>
    </div>


    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">

        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>


        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">

                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="${path}/${user.user_avatar}" class="user-image">
                        <span class="hidden-xs">${user.user_nick}</span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <img src="${path}/${user.user_avatar}" class="img-circle">

                            <p>
                                ${user.user_nick} - ${user.user_typeStr}
                            </p>
                        </li>

                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a data-toggle="modal" data-target="#upPwd" class="btn btn-default btn-flat">修改密码</a>
                            </div>
                            <div class="pull-right">
                                <a href="${path}/user/logout.do" class="btn btn-default btn-flat">注销</a>
                            </div>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
    </nav>
</header>
<!-- 页面头部 /-->
</body>
</html>
