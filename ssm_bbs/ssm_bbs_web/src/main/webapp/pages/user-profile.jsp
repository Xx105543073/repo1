<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    pageContext.setAttribute("path",request.getContextPath());
    pageContext.setAttribute("user",request.getSession().getAttribute("user"));
%>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>个人中心</title>


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
    <link rel="stylesheet" href="${path}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="${path}/plugins/datatables/dataTables.bootstrap.css">
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

<!--模态窗口-->
<div class="tab-pane" id="tab-model">

    <div id="addTip" class="modal fade" role="dialog">
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
                            <input type="text" class="form-control" id="tip_title" name="tip_title"
                                   placeholder="请输入标题"
                                   required/>
                        </div>

                        <div class="form-group">
                            <label for="tip_content">正文</label>
                            <textarea class="form-control" rows="10" id="tip_content"
                                      name="tip_content"></textarea>
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
                    <button type="button" class="btn btn-success" id="tipConfirm">发布
                    </button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>

        <!-- /.modal-dialog -->
    </div>

    <div id="upPwd" class="modal fade" role="dialog">
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
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" id="pwdConfirm">确定
                    </button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>

        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

</div>
<!--模态窗口/-->

<div class="wrapper">
    <!-- 页面头部 -->
<%@include file="header.jsp"%>
    <!-- 导航侧栏 -->
<%@include file="side.jsp"%>
    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <div class="content-wrap">
                <div class="content">
                    <header class="article-header">
                        <h1 class="article-title">个人主页</h1>
                    </header>
                    <div style="width: 225px;height: 500px;float: left;padding: 45px;">
                        <img style="width: 110px;height:110px;border: none" class="img-circle" src="${path}/img/user2-160x160.jpg">
                        <br>
                        <br>
                        <div class="col-md-10 data">
                            <form action="${path}/user/updateHead.do" class="a-upload" method="post" enctype="multipart/form-data" >
                                <input type="hidden" name="user_id" value="${user.user_id}">
                                <input type="file" name="user_head" id="file">上传头像
                            </form>
                        </div>
                    </div>
                    <div style="width: 400px;height: 500px;float: left;padding: 20px;">
                        <h3>昵称:&nbsp;&nbsp;&nbsp;&nbsp;${user.user_nick}</h3>
                        <hr>
                        <h3>性别:&nbsp;&nbsp;&nbsp;&nbsp;<c:if test="${user.user_gender==1}">男</c:if><c:if test="${user.user_gender==2}">女</c:if></h3>
                        <hr>
                        <h3>年龄:&nbsp;&nbsp;&nbsp;&nbsp;${user.user_age}</h3>
                        <hr>
                        <h3>用户类型:&nbsp;&nbsp;&nbsp;&nbsp;${user.user_typeStr}</h3>
                        <hr>
                        <a href="${path}/tip/findTipsByUserId.do?user_id=${user.user_id}"><h3>查看我发表的帖子</h3></a>
                        <hr>
                    </div>
                </div>
            </div>

        </section>
        <!-- 正文区域 /-->

    </div>

    <!-- 底部导航 -->
<%@include file="footer.jsp"%>

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
<script src="${path}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="${path}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="${path}/plugins/fastclick/fastclick.js"></script>
<script src="${path}/plugins/iCheck/icheck.min.js"></script>
<script src="${path}/plugins/adminLTE/js/app.min.js"></script>
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
    $(document).ready(function() {
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
        if (${empty user}){
            location.href="${path}/pages/login.jsp";
        }
    });

    $("#tipConfirm").click(function () {
        var r = confirm("确定发表该贴?")
        if (r == true) {
            var form = document.getElementById("tipForm"); // 由id获取表单
            var flag = true; // 能否发贴的flag
            var errorMsg = "";
            var tipTitle = form.tip_title.value; // 获取输入的标题
            var tipTab = form.tab_id.value; // 获取选择的分类
            if (!tipTitle || tipTitle == '') {
                errorMsg = errorMsg + "请填写标题！\n";
                flag = false;
            }
            if (!tipTab || tipTab == '') {
                errorMsg = errorMsg + "请选择分类！\n";
                flag = false;
            }
            if (flag == true) {
                form.submit(); // 提交表单
            } else {
                alert("【发布失败】\n" + errorMsg);
            }
        }
    });

    $("#pwdConfirm").click(function () {
        var r = confirm("确定修改密码?")
        if (r == true) {
            var form = document.getElementById("pwdForm"); // 由id获取表单
            var flag = true; // 能否发贴的flag
            var errorMsg = "";
            var password = form.password.value; // 获取输入的原密码
            var user_password = form.user_password.value; // 获取新密码
            var user_password1 = form.user_password1.value; // 获取新密码的确认密码
            if (!password || password == '') {
                errorMsg = errorMsg + "请填写原密码！\n";
                flag = false;
            } else if (password != ${user.user_password}) {
                errorMsg = errorMsg + "原密码错误！\n";
                flag = false;
            } else if (!user_password || user_password == '') {
                errorMsg = errorMsg + "请填写新密码！\n";
                flag = false;
            } else if (user_password != user_password1) {
                errorMsg = errorMsg + "两次输入的密码不一致！\n";
                flag = false;
            }
            if (flag == true) {
                form.submit(); // 提交表单
            } else {
                alert("【发布失败】\n" + errorMsg);
            }
        }
    });


</script>
</body>

</html>