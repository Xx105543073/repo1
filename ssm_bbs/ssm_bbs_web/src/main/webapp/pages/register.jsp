<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("path",request.getContextPath());
%>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>注册</title>


    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel="stylesheet" href="${path}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${path}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${path}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${path}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${path}/plugins/iCheck/square/blue.css">
</head>

<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">


        新用户注册


    </div>

    <div class="register-box-body">
        <p class="login-box-msg"></p>

        <form action="${path}/user/register.do" method="post" id="form">
            <div class="form-group has-feedback">
                <input type="text" class="form-control" placeholder="用户名必填:2到15位字符" name="user_name"
                       id="user_name">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" class="form-control" placeholder="昵称" name="user_nick" id="user_nick">
                <span class="glyphicon glyphicon-italic form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" class="form-control" placeholder="年龄" name="user_age" id="user_age">
                <span class="glyphicon glyphicon-italic form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">

                <div class="">
                    <select class="form-control">
                        <option name="user_gender" value="1" selected>男</option>
                        <option name="user_gender" value="2">女</option>
                    </select>
                </div>
            </div>

            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="密码:6到15位字符" name="user_password"
                       id="user_password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="确认密码" name="user_password1"
                id="user_password1">
                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
            </div>
            <div class="row">
                <!-- /.col -->
                <div class="col-xs-12">
                    <button type="button" class="btn btn-primary btn-block btn-flat" id="check">注册</button>
                </div>
                <!-- /.col -->
            </div>
        </form>
        <a href="${path}/pages/login.jsp" class="text-center">我有账号，现在就去登录</a>
    </div>
    <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 2.2.3 -->
<!-- Bootstrap 3.3.6 -->
<!-- iCheck -->
<script src="${path}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${path}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${path}/plugins/iCheck/icheck.min.js"></script>
<script>
    $(function() {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
    //校验年龄
    function checkAge() {
        //1.获取年龄
        var user_age = $("#user_age").val();
        if(user_age!=""&&user_age.length<4){
            //年龄合法
            $("#user_age").css("border","");

        }else{
            //年龄非法，加红色边框
            $("#user_age").css("border","2px solid red");
        }
        return user_age!=""&&user_age.length<4;
    }
    //校验昵称
    function checkNick() {
        //1.获取昵称
        var user_nick = $("#user_nick").val();
        if(user_nick!=""&&user_nick.length<10){
            //昵称合法
            $("#user_nick").css("border","");

        }else{
            //昵称非法，加红色边框
            $("#user_nick").css("border","2px solid red");
        }
        return user_nick!=""&&user_nick.length<10;
    }
    //校验用户名
    function checkUsername() {
        //1.获取用户名
        var username = $("#user_name").val();
        //2.定义正则
        var reg_username = /^\w{2,15}$/;

        //3.判断，给出提示信息
        var flag = reg_username.test(username);
        if(flag){
            //用户名合法
            $("#user_name").css("border","");

        }else{
            //用户名非法，加红色边框
            $("#user_name").css("border","2px solid red");
        }
        return flag;
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
    //校验确认密码
    function checkPassword1() {
        //1.获取密码
        var password = $("#user_password").val();
        var password1 = $("#user_password1").val();
        if(password==password1){
            //用户名合法
            $("#user_password1").css("border","");
            return password==password1;
        }else{
            //用户名非法，加红色边框
            $("#user_password1").css("border","2px solid red");
        }
        return password==password1;
    }
    $(function (){
        //当某一个组件失去焦点时，调用对应的校验方法
        $("#user_name").blur(checkUsername);
        $("#user_password").blur(checkPassword);
        $("#user_password1").blur(checkPassword1);
        $("#user_nick").blur(checkNick);
        $("#user_age").blur(checkAge);


            $("#check").click(function () {
                if(checkUsername()&&checkPassword()&&checkPassword1()&&checkNick()&&checkAge()) {
                    var form = document.getElementById("form"); // 由id获取表单
                    form.submit();//提交表单
                }
            });
    });
</script>
</body>
</html>