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


        <div style="width: 70%;margin:1% 2% 1% 5%;">
            <div class="panel panel-default" id="main" style="">
                <div class="panel-heading" style="background-color: white">
                    <div>
                        <div class="panel-heading" style="background-color: white">
                        </div>
                        <!-- 贴子标题 -->
                        <h4>${tip.tip_title}
                            <div style="float: right">

                            </div>
                        </h4>

                        <%--是否结贴：${tip.tip_isKnot}...贴子发表人：${tip.user_id}...当前登录用户：${USER.user_id}...--%>
                        <%--贴子发表人 == 当前登录用户：${tip.user_id == USER.user_id}--%>

                        &nbsp;
                        <div>
                            <a href="#">
                    <span>
                        <strong>
                            <c:choose>
                                <c:when test="${empty tip.user.user_nick}">
                                    ${tip.user.user_name}
                                </c:when>
                                <c:otherwise>
                                    ${tip.user.user_nick}
                                </c:otherwise>
                            </c:choose>
                        </strong>
                    </span>
                            </a>
                            <br>
                            <span>
                    <small class="text-muted">发表于：<fmt:formatDate value="${tip.tip_publishTime}"
                                                                  pattern="yyyy-MM-dd HH:mm:ss"/></small>
                    <br>
                </span>
                        </div>
                    </div>
                </div>
                <!-- 这里显示贴子正文 -->
                <ul class="list-group" style="width: 100%">
                    <li class="list-group-item">
                        <c:out value="${tip.tip_content}"></c:out>
                    </li>
                </ul>
            </div>

            <!-- 这里显示贴子的回复 -->
            <ul class="list-group" style="width: 100%">
                <!-- 遍历并显示回复 -->
                <c:forEach items="${tip.replies}" var="reply">
                    <li class="list-group-item">
                        <div style="height: auto; ">
                            <div>
                                <a href="#">
                                    <strong>
                                        <!-- 显示发表回复的用户昵称 -->
                                        <c:choose>
                                            <c:when test="${empty tip.user.user_nick}">
                                                ${tip.user.user_name}
                                            </c:when>
                                            <c:otherwise>
                                                ${tip.user.user_nick}
                                            </c:otherwise>
                                        </c:choose>
                                    </strong>
                                </a>
                                <small class="text-muted">
                                    <!-- 显示回复发表的时间 -->
                                    <fmt:formatDate value="${reply.reply_publishTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                </small>
                            </div>
                            <div style="height: 80px; overflow:auto; word-wrap:break-word;">
                                <!-- 这里显示回复的正文 -->
                                <c:out value="${reply.reply_content}"></c:out>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>

            <div class="panel panel-default" style="">
                <div class="panel-heading" style="background-color: white">回复本贴</div>
                <div class="panel-body">
                    <div class="form-group">


                            <!-- 这里是发表回复的表单 -->
                            <form action="${path}/reply/addReply.do" method="post" id="form">
                                <input type="hidden" name="user_id" value="${user.user_id}">
                                <input type="hidden" name="tip_id" value="${tip.tip_id}">
                                <!-- 这里显示输入回复内容的文本框 -->
                                <textarea class="form-control" rows="3" name="reply_content"
                                          id="reply_content" required></textarea>
                                <br/>
                                <input type="button" class="btn btn-success btn-sm"
                                       value="发表" id="check"/>
                            </form>



                    </div>
                </div>
            </div>

        </div>

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

$(function () {
   $("#check").click(function () {
       var form = document.getElementById("form"); // 由id获取表单
       var reply_content = form.reply_content.value; // 获取输入的回复内容
       if (reply_content == "") {
           alert("请填写回复内容！");
       } else {
           var r = confirm("确定发表该回复?")
           if (r == true) {

               form.submit(); // 提交表单
           }
       }
   })
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