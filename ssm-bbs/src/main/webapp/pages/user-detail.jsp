<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<%@include file="windows.jsp"%>

<div class="wrapper">
    <!-- 页面头部 -->
<%@include file="header.jsp"%>
    <!-- 导航侧栏 -->
<%@include file="side.jsp"%>
    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                用户信息
                <small></small>
            </h1>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <div class="box-body">

                <!--tab页-->
                <div class="nav-tabs-custom">

                    <!--tab头-->
                    <ul class="nav nav-tabs">
                        <li>
                            <a>修改用户信息</a>
                        </li>
                    </ul>
                    <!--tab头/-->

                    <!--tab内容-->
                    <div>
                        <!--基础控件-->
                        <form action="${path}/user/mUpdateUser.do" method="post" class="tab-pane" id="form">
                            <div class="row data-type">

                                    <input type="hidden" readonly class="form-control" name="user_id" value="${U.user_id}">

                                <div class="col-md-2 title">用户名</div>
                                <div class="col-md-4 data">
                                    <input type="text" readonly class="form-control" name="user_name" value="${U.user_name}">
                                </div>
                                <div class="col-md-2 title">密码</div>
                                <div class="col-md-4 data">
                                    <input type="text" class="form-control" placeholder="密码" name="user_password" id="user_password"
                                           value="${U.user_password}">
                                </div>

                                <div class="col-md-2 title">昵称</div>
                                <div class="col-md-4 data">
                                    <input type="text" class="form-control" placeholder="昵称" name="user_nick" id="user_nick"
                                           value="${U.user_nick}">
                                </div>

                                <div class="col-md-2 title">年龄</div>
                                <div class="col-md-4 data">
                                    <input type="text" class="form-control" placeholder="昵称" name="user_age" id="user_age"
                                           value="${U.user_age}">
                                </div>

                                <c:if test="${U.user_gender ==1}">
                                <div class="col-md-2 title">性别</div>
                                <div class="col-md-4 data">
                                    <div class="form-group form-inline">
                                        <div class="radio"><label><input type="radio" name="user_gender" value="1" checked> 男</label></div>
                                        <div class="radio"><label><input type="radio" name="user_gender" value="2"> 女</label></div>
                                    </div>
                                </div>
                                </c:if>

                                <c:if test="${U.user_gender ==2}">
                                    <div class="col-md-2 title">性别</div>
                                    <div class="col-md-4 data">
                                        <div class="form-group form-inline">
                                            <div class="radio"><label><input type="radio" name="user_gender" value="1"> 男</label></div>
                                            <div class="radio"><label><input type="radio" name="user_gender" value="2" checked> 女</label></div>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${user.user_type ==0}">
                                <c:if test="${U.user_type ==0}">
                                    <div class="col-md-2 title">用户类型</div>
                                    <div class="col-md-4 data">
                                        <div class="form-group form-inline">
                                            <div class="radio"><label><input readonly type="radio" name="user_type" value="${U.user_type}" checked> 超级管理员</label></div>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${U.user_type ==1}">
                                <div class="col-md-2 title">用户类型</div>
                                <div class="col-md-4 data">
                                    <div class="form-group form-inline">
                                        <div class="radio"><label><input type="radio" name="user_type"  value="2"> 普通用户</label></div>
                                        <div class="radio"><label><input type="radio" name="user_type"  value="1" checked> 管理员</label></div>
                                    </div>
                                </div>
                                </c:if>
                                <c:if test="${U.user_type ==2}">
                                    <div class="col-md-2 title">用户类型</div>
                                    <div class="col-md-4 data">
                                        <div class="form-group form-inline">
                                            <div class="radio"><label><input type="radio" name="user_type" value="2" checked>普通用户</label></div>
                                            <div class="radio"><label><input type="radio" name="user_type" value="1">管理员</label></div>
                                        </div>
                                    </div>
                                </c:if>
                                </c:if>

                                <c:if test="${user.user_type ==1}">
                                    <c:if test="${U.user_type ==0}">
                                        <div class="col-md-2 title">用户类型</div>
                                        <div class="col-md-4 data">
                                            <div class="form-group form-inline">
                                                <div class="radio"><label><input type="radio" disabled name="user_type" value="${U.user_type}" checked> 超级管理员</label></div>
                                            </div>
                                        </div>
                                    </c:if>
                                    <c:if test="${U.user_type ==1}">
                                        <div class="col-md-2 title">用户类型</div>
                                        <div class="col-md-4 data">
                                            <div class="form-group form-inline">
                                                <div class="radio"><label><input type="radio" disabled name="user_type"  value="2"> 普通用户</label></div>
                                                <div class="radio"><label><input type="radio" disabled name="user_type"  value="1" checked> 管理员</label></div>
                                            </div>
                                        </div>
                                    </c:if>
                                    <c:if test="${U.user_type ==2}">
                                        <div class="col-md-2 title">用户类型</div>
                                        <div class="col-md-4 data">
                                            <div class="form-group form-inline">
                                                <div class="radio"><label><input type="radio" disabled name="user_type" value="2" checked>普通用户</label></div>
                                                <div class="radio"><label><input type="radio" disabled name="user_type" value="1">管理员</label></div>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:if>

                                <div class="col-md-2 title"></div>
                                <div class="col-md-10 data text-center">
                                    <button type="button" class="btn bg-maroon" id="check">保存</button>
                                    <button type="button" class="btn bg-default" onclick="history.back(-1);">返回</button>
                                </div>
                            </div>

                        </form>
                        <!--基础控件/-->
                    </div>
                    <!--tab内容/-->

                </div>
                <!--tab页/-->
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

    //校验密码
    function checkPassword() {
        //1.获取密码
        var password = $("#user_password").val();
        //2.定义正则
        var reg_password = /^\w{6,15}$/;

        //3.判断，给出提示信息
        var flag = reg_password.test(password);
        if(flag){
            //用户名合法
            $("#user_password").css("border","");

        }else{
            //用户名非法，加红色边框
            $("#user_password").css("border","2px solid red");
        }
        return flag;
    }
    //校验昵称
    function checkUserNick() {
        //1.获取密码
        var nick = $("#user_nick").val();

        if(nick!=""){
            //用户名合法
            $("#user_nick").css("border","");

        }else{
            //用户名非法，加红色边框
            $("#user_nick").css("border","2px solid red");
        }
        return nick!="";
    }

    $(function (){
        //当某一个组件失去焦点时，调用对应的校验方法
        $("#user_password").blur(checkPassword);
        $("#user_nick").blur(checkUserNick);


        $("#check").click(function () {
            if(checkPassword()&&checkUserNick()) {
                var form = document.getElementById("form"); // 由id获取表单
                form.submit();//提交表单
            }
        });
    });

    $(document).ready(function () {
        if (${empty user}){
            location.href="${path}/pages/login.jsp";
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
            } else if (password != "${user.user_password}") {
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