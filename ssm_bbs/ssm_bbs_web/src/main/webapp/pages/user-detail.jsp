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

                                <div class="col-md-2 title">ID</div>
                                <div class="col-md-4 data">
                                    <input type="text" readonly class="form-control" name="user_id" value="${U.user_id}">
                                </div>

                                <div class="col-md-2 title">用户名</div>
                                <div class="col-md-4 data">
                                    <input type="text" readonly class="form-control" name="user_name" value="${U.user_name}">
                                </div>

                                <div class="col-md-2 title">昵称</div>
                                <div class="col-md-4 data">
                                    <input type="text" class="form-control" placeholder="昵称" name="user_nick" id="user_nick"
                                           value="${U.user_nick}">
                                </div>

                                <div class="col-md-2 title">密码</div>
                                <div class="col-md-4 data">
                                    <input type="text" class="form-control" placeholder="密码" name="user_password" id="user_password"
                                           value="${U.user_password}">
                                </div>
                                <c:if test="${U.user_type ==0}">
                                    <div class="col-md-2 title">用户类型</div>
                                    <div class="col-md-10 data">
                                        <div class="form-group form-inline">
                                            <div class="radio"><label><input readonly type="radio" name="user_type" value="${U.user_type}" checked> 超级管理员</label></div>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${U.user_type ==1}">
                                <div class="col-md-2 title">用户类型</div>
                                <div class="col-md-10 data">
                                    <div class="form-group form-inline">
                                        <div class="radio"><label><input type="radio" name="user_type"  value="2"> 普通用户</label></div>
                                        <div class="radio"><label><input type="radio" name="user_type"  value="1" checked> 大会员</label></div>
                                    </div>
                                </div>
                                </c:if>
                                <c:if test="${U.user_type ==2}">
                                    <div class="col-md-2 title">用户类型</div>
                                    <div class="col-md-10 data">
                                        <div class="form-group form-inline">
                                            <div class="radio"><label><input type="radio" name="user_type" value="2" checked>普通用户</label></div>
                                            <div class="radio"><label><input type="radio" name="user_type" value="1">大会员</label></div>
                                        </div>
                                    </div>
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
</script>
</body>

</html>