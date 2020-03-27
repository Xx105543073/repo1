<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
    pageContext.setAttribute("user",request.getSession().getAttribute("user"));
%>
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>论坛</title>

    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


    <link rel="stylesheet" href="${path}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${path}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${path}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${path}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="${path}/plugins/morris/morris.css">
    <link rel="stylesheet" href="${path}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="${path}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="${path}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="${path}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="${path}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="${path}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="${path}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="${path}/plugins/select2/select2.css">
    <link rel="stylesheet" href="${path}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="${path}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="${path}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${path}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${path}/css/style.css">
    <link rel="stylesheet" href="${path}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="${path}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="${path}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="${path}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">
    <!--引入页面头部-->
    <%@include file="header.jsp" %>

    <!--引入导航侧栏-->
    <%@include file="side.jsp" %>

    <!-- 内容区域 -->
    <div class="content-wrapper">


        <!-- 正文区域 -->
        <section class="content">

            <div class="box-body">

                <!--tab页-->
                <div class="nav-tabs-custom">

                    <!--tab头-->
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#1" data-toggle="tab">我的帖子</a>
                        </li>


                    </ul>
                    <!--tab头/-->
                    <!--tab内容-->
                    <div class="tab-content">
                        <div class="tab-pane active" id="1">
                            <c:forEach items="${tips}" var="tip">
                                    <li class="list-group-item">
                                        <div style="height: 50px">
                                            <div style="width: 89%;float: left">
                                                    <%--这里显示贴子标题，点击贴子跳转到贴子详情，需要传参贴子id--%>
                                                <a href="${path}/tip/findTipById.do?tip_id=${tip.tip_id}">${tip.tip_title}</a>

                                                <br>
                                                <div>
                                                    <!-- 显示贴子对应的分类 -->
                                                    <a><span class="label label-warning">${tip.tab.tab_name}</span></a>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <!-- 点击用户跳转到用户信息页面，需要传参用户id -->
                                                    <span>
                                                            <strong>
                                                                <c:choose>
                                                                    <c:when test="${not empty tip.user.user_nick}">${tip.user.user_nick}</c:when>
                                                                    <c:otherwise>${tip.user.user_name}</c:otherwise>
                                                                </c:choose>
                                                            </strong>
                                                        </span>
                                                    </a>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <!-- 显示贴子发表时间 -->
                                                    <small class="text-muted">
                                                        发表时间：<fmt:formatDate value="${tip.tip_publishTime}"
                                                                             pattern="yyyy-MM-dd HH:mm:ss"/>
                                                        &nbsp;&nbsp;
                                                    </small>
                                                </div>
                                            </div>
                                            <div style="width: 5%;float: right;text-align: center">
                                                <br>
                                                <span class="label label-info">
                                            <!-- 这里显示贴子回复量 -->
                                            ${tip.tip_replies}条回复
                                        </span>

                                            </div>
                                        </div>
                                    </li>
                            </c:forEach>
                        </div>

                    </div>
                    <!--tab内容-->
                </div>
            </div>
            <!--模态窗口-->
            <div class="tab-pane" id="tab-model">

                <div id="addTip" class="modal modal-primary" role="dialog">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">发表新帖</h4>
                            </div>
                            <div class="modal-body">


                                <form action="${path}/tip/addTip.do" method="post" id="tipForm">
                                    <div class="form-group">
                                        <input type="hidden" name="user_id" value="${user.user_id}">
                                        <label for="tip_title">标题</label>
                                        <input type="text" class="form-control" id="tip_title" name="tip_title" placeholder="请输入标题"
                                               required/>
                                    </div>

                                    <div class="form-group">
                                        <label for="tip_content">正文</label>
                                        <textarea class="form-control" rows="10" id="tip_content" name="tip_content"></textarea>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-6" style="width: 20%">
                                            分类：
                                            <select class="form-control" id="selectTab" name="tab_id">
                                                <option name="tab_id" value="1">科技</option>
                                                <option name="tab_id" value="2">学习</option>
                                                <option name="tab_id" value="3">生活</option>
                                                <option name="tab_id" value="4">其他</option>
                                            </select>
                                        </div>
                                    </div>
                                    <br>
                                    <br>
                                </form>


                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline" data-dismiss="modal" id="tipConfirm">发布</button>
                                <button type="button" class="btn btn-outline" data-dismiss="modal">关闭</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>

                    <!-- /.modal-dialog -->
                </div>

                <div id="upPwd" class="modal modal-primary" role="dialog" >
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">修改密码</h4>
                            </div>
                            <div class="modal-body">


                                <form action="${path}/user/updatePwd.do" method="post" id="pwdForm">
                                    <div class="form-group">
                                        <input type="hidden" name="user_id" value="${user.user_id}">
                                        <input type="hidden" name="user_name" value="${user.user_name}">
                                        <label for="tip_title">原密码</label>
                                        <input type="text" class="form-control" id="password" name="password"
                                               required/>
                                    </div>

                                    <div class="form-group">
                                        <label for="tip_content">新密码</label>
                                        <input type="text" class="form-control" name="user_password">
                                    </div>

                                    <div class="form-group">
                                        <label for="tip_content">确认新密码</label>
                                        <input type="text" class="form-control" name="user_password1">
                                    </div>

                                    <br>
                                    <br>
                                </form>


                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline" data-dismiss="modal" id="pwdConfirm">确定</button>
                                <button type="button" class="btn btn-outline" data-dismiss="modal">关闭</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>

                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
            <!--模态窗口/-->
        </section>

    </div>
    <!-- 内容区域 /-->

    <!-- 引入底部导航 -->
    <%@include file="footer.jsp" %>

</div>


<script src="${path}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${path}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="${path}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${path}/plugins/raphael/raphael-min.js"></script>
<script src="${path}/plugins/morris/morris.min.js"></script>
<script src="${path}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="${path}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${path}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="${path}/plugins/knob/jquery.knob.js"></script>
<script src="${path}/plugins/daterangepicker/moment.min.js"></script>
<script src="${path}/plugins/daterangepicker/daterangepicker.js"></script>
<script src="${path}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="${path}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="${path}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="${path}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="${path}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="${path}/plugins/fastclick/fastclick.js"></script>
<script src="${path}/plugins/iCheck/icheck.min.js"></script>
<script src="${path}/plugins/adminLTE/js/app.min.js"></script>
<script src="${path}/plugins/treeTable/jquery.treetable.js"></script>
<script src="${path}/plugins/select2/select2.full.min.js"></script>
<script src="${path}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="${path}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="${path}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="${path}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="${path}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="${path}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="${path}/plugins/ckeditor/ckeditor.js"></script>
<script src="${path}/plugins/input-mask/jquery.inputmask.js"></script>
<script src="${path}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="${path}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="${path}/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${path}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="${path}/plugins/chartjs/Chart.min.js"></script>
<script src="${path}/plugins/flot/jquery.flot.min.js"></script>
<script src="${path}/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="${path}/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="${path}/plugins/flot/jquery.flot.categories.min.js"></script>
<script src="${path}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="${path}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="${path}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="${path}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>
    $(document).ready(function () {
        // 选择框
        $(".select2").select2();

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
        // 激活导航位置
        setSidebarActive("admin-index");
    });

    $(document).ready(function () {
        if (${empty user}){
            location.href="${path}/pages/login.jsp";
        }
    });

</script>
</body>

</html>
<!---->