<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    pageContext.setAttribute("path",request.getContextPath());
%>
<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>论坛</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">

    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">

    <link rel="stylesheet"
          href="${path}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${path}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${path}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${path}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${path}/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${path}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${path}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${path}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${path}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${path}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${path}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${path}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${path}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${path}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${path}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${path}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${path}/css/style.css">
    <link rel="stylesheet"
          href="${path}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${path}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${path}/plugins/bootstrap-slider/slider.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <!-- 页面头部 -->
    <header class="main-header">
        <!-- Logo -->
        <a href="#" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-lg">论坛系统</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
        </nav>
    </header>
    <!-- 页面头部 /-->
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="${path}/img/user2-160x160.jpg"
                         class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>
                        未登录
                    </p>
                </div>
            </div>

            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">菜单</li>
                <li id="admin-index">
                    <a href="${path}/index.jsp">
                        <span>登录界面</span></a></li>
                <li>
                    <a href="${path}/pages/register.jsp">
                    <span>注册界面</span></a></li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>登录失败页面</h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="error-page">


                <div class="error-content">

                    <p>
                        ${result}!
                    </p><br>
                    <a href="${path}/pages/login.jsp">返回到登录页面</a>
                    重新登录
                </div>
                <!-- /.error-content -->
            </div>
            <!-- /.error-page -->
        </section>
        <!-- /.content -->
    </div>
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0
        </div>
        <strong>忘记密码请联系管理员:1059049280@qq.com
        </strong>
    </footer>
    <!-- 底部导航 /-->

</div>


<script
        src="${path}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
        src="${path}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script
        src="${path}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${path}/plugins/raphael/raphael-min.js"></script>
<script
        src="${path}/plugins/morris/morris.min.js"></script>
<script
        src="${path}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script
        src="${path}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
        src="${path}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script
        src="${path}/plugins/knob/jquery.knob.js"></script>
<script
        src="${path}/plugins/daterangepicker/moment.min.js"></script>
<script
        src="${path}/plugins/daterangepicker/daterangepicker.js"></script>
<script
        src="${path}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script
        src="${path}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="${path}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="${path}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script
        src="${path}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script
        src="${path}/plugins/fastclick/fastclick.js"></script>
<script
        src="${path}/plugins/iCheck/icheck.min.js"></script>
<script
        src="${path}/plugins/adminLTE/js/app.min.js"></script>
<script
        src="${path}/plugins/treeTable/jquery.treetable.js"></script>
<script
        src="${path}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="${path}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script
        src="${path}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="${path}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script
        src="${path}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script
        src="${path}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script
        src="${path}/plugins/ckeditor/ckeditor.js"></script>
<script
        src="${path}/plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="${path}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script
        src="${path}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script
        src="${path}/plugins/datatables/jquery.dataTables.min.js"></script>
<script
        src="${path}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script
        src="${path}/plugins/chartjs/Chart.min.js"></script>
<script
        src="${path}/plugins/flot/jquery.flot.min.js"></script>
<script
        src="${path}/plugins/flot/jquery.flot.resize.min.js"></script>
<script
        src="${path}/plugins/flot/jquery.flot.pie.min.js"></script>
<script
        src="${path}/plugins/flot/jquery.flot.categories.min.js"></script>
<script
        src="${path}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script
        src="${path}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script>
    $(document).ready(function () {
        
        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document).ready(function () {
        setSidebarActive("admin-500");
    });
</script>
</body>

</html>