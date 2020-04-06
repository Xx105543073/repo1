<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
 pageContext.setAttribute("path",request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>登录</title>

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
	href="${path}/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${path}/plugins/iCheck/square/blue.css">
</head>

<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<div>欢迎登录</div>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">论坛</p>

			<form action="${path}/user/login.do" method="post" id="form">
				<div class="form-group has-feedback">
					<input type="text" name="user_name" class="form-control" placeholder="用户名">
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="user_password" class="form-control" placeholder="密码">
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<!-- /.col -->
					<div class="col-xs-12">
						<button type="button" class="btn btn-primary btn-block btn-flat" id="check">登录</button><br>
                        <a href="${path}/pages/register.jsp" class="text-center">立即注册</a>
                        <a id="find">找回密码</a>
					</div>
					<!-- /.col -->
				</div>
			</form>


		</div>
		<!-- /.login-box-body -->
	</div>
	<script
		src="${path}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${path}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${path}/plugins/iCheck/icheck.min.js"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
		$(function () {
            $("#check").click(function () {
                var form = document.getElementById("form"); // 由id获取表单
                var name = form.user_name.value; // 获取输入的用户名
                var pwd = form.user_password.value; // 获取输入的密码
                if(name == null || pwd == null) {
                    alert("请将登录信息填写完整!");
                }else{
                    form.submit(); // 提交表单
                }
            });
        });
		$(function () {
            $("#find").click(function () {
                alert("忘记密码？请联系管理员：1059049280@qq.com")
            })
        })
        $(function () {
            if (${not empty result}){
           alert("${result}");
            }
        });
	</script>
</body>

</html>