/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-05-04 16:22:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

    pageContext.setAttribute("path",request.getContextPath());
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <title>注册</title>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- Tell the browser to be responsive to screen width -->\r\n");
      out.write("    <meta content=\"width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no\" name=\"viewport\">\r\n");
      out.write("    <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\r\n");
      out.write("    <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/bootstrap/css/bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/font-awesome/css/font-awesome.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/ionicons/css/ionicons.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/adminLTE/css/AdminLTE.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/iCheck/square/blue.css\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body class=\"hold-transition register-page\">\r\n");
      out.write("<div class=\"register-box\">\r\n");
      out.write("    <div class=\"register-logo\">\r\n");
      out.write("        新用户注册\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"register-box-body\">\r\n");
      out.write("        <p class=\"login-box-msg\"></p>\r\n");
      out.write("\r\n");
      out.write("        <form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/user/register.do\" method=\"post\" id=\"form\">\r\n");
      out.write("            <div class=\"form-group has-feedback\">\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" placeholder=\"用户名:2到15位字符\" name=\"user_name\"\r\n");
      out.write("                       id=\"user_name\">\r\n");
      out.write("                <span class=\"glyphicon glyphicon-user form-control-feedback\"></span>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group has-feedback\">\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" placeholder=\"昵称\" name=\"user_nick\" id=\"user_nick\">\r\n");
      out.write("                <span class=\"glyphicon glyphicon-italic form-control-feedback\"></span>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group has-feedback\">\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" placeholder=\"年龄\" name=\"user_age\" id=\"user_age\">\r\n");
      out.write("                <span class=\"glyphicon glyphicon-italic form-control-feedback\"></span>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group has-feedback\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"\">\r\n");
      out.write("                    <select class=\"form-control\">\r\n");
      out.write("                        <option name=\"user_gender\" value=\"1\" selected>男</option>\r\n");
      out.write("                        <option name=\"user_gender\" value=\"2\">女</option>\r\n");
      out.write("                    </select>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"form-group has-feedback\">\r\n");
      out.write("                <input type=\"password\" class=\"form-control\" placeholder=\"密码:6到15位字符\" name=\"user_password\"\r\n");
      out.write("                       id=\"user_password\">\r\n");
      out.write("                <span class=\"glyphicon glyphicon-lock form-control-feedback\"></span>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group has-feedback\">\r\n");
      out.write("                <input type=\"password\" class=\"form-control\" placeholder=\"确认密码\" name=\"user_password1\"\r\n");
      out.write("                id=\"user_password1\">\r\n");
      out.write("                <span class=\"glyphicon glyphicon-log-in form-control-feedback\"></span>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <!-- /.col -->\r\n");
      out.write("                <div class=\"col-xs-12\">\r\n");
      out.write("                    <button type=\"button\" class=\"btn btn-primary btn-block btn-flat\" id=\"check\">注册</button>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- /.col -->\r\n");
      out.write("            </div>\r\n");
      out.write("        </form>\r\n");
      out.write("        <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/pages/login.jsp\" class=\"text-center\">我有账号，现在就去登录</a>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /.form-box -->\r\n");
      out.write("</div>\r\n");
      out.write("<!-- /.register-box -->\r\n");
      out.write("\r\n");
      out.write("<!-- jQuery 2.2.3 -->\r\n");
      out.write("<!-- Bootstrap 3.3.6 -->\r\n");
      out.write("<!-- iCheck -->\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/jQuery/jquery-2.2.3.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/plugins/iCheck/icheck.min.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("    $(function() {\r\n");
      out.write("        $('input').iCheck({\r\n");
      out.write("            checkboxClass: 'icheckbox_square-blue',\r\n");
      out.write("            radioClass: 'iradio_square-blue',\r\n");
      out.write("            increaseArea: '20%' // optional\r\n");
      out.write("        });\r\n");
      out.write("    });\r\n");
      out.write("    //校验年龄\r\n");
      out.write("    function checkAge() {\r\n");
      out.write("        //1.获取年龄\r\n");
      out.write("        var user_age = $(\"#user_age\").val();\r\n");
      out.write("        if(user_age!=\"\"&&user_age.length<4){\r\n");
      out.write("            //年龄合法\r\n");
      out.write("            $(\"#user_age\").css(\"border\",\"\");\r\n");
      out.write("\r\n");
      out.write("        }else{\r\n");
      out.write("            //年龄非法，加红色边框\r\n");
      out.write("            $(\"#user_age\").css(\"border\",\"2px solid red\");\r\n");
      out.write("        }\r\n");
      out.write("        return user_age!=\"\"&&user_age.length<4;\r\n");
      out.write("    }\r\n");
      out.write("    //校验昵称\r\n");
      out.write("    function checkNick() {\r\n");
      out.write("        //1.获取昵称\r\n");
      out.write("        var user_nick = $(\"#user_nick\").val();\r\n");
      out.write("        if(user_nick!=\"\"&&user_nick.length<10){\r\n");
      out.write("            //昵称合法\r\n");
      out.write("            $(\"#user_nick\").css(\"border\",\"\");\r\n");
      out.write("\r\n");
      out.write("        }else{\r\n");
      out.write("            //昵称非法，加红色边框\r\n");
      out.write("            $(\"#user_nick\").css(\"border\",\"2px solid red\");\r\n");
      out.write("        }\r\n");
      out.write("        return user_nick!=\"\"&&user_nick.length<10;\r\n");
      out.write("    }\r\n");
      out.write("    //校验用户名\r\n");
      out.write("    function checkUsername() {\r\n");
      out.write("        //1.获取用户名\r\n");
      out.write("        var username = $(\"#user_name\").val();\r\n");
      out.write("        //2.定义正则\r\n");
      out.write("        var reg_username = /^\\w{2,15}$/;\r\n");
      out.write("\r\n");
      out.write("        //3.判断，给出提示信息\r\n");
      out.write("        var flag = reg_username.test(username);\r\n");
      out.write("        if(flag){\r\n");
      out.write("            //用户名合法\r\n");
      out.write("            $(\"#user_name\").css(\"border\",\"\");\r\n");
      out.write("\r\n");
      out.write("        }else{\r\n");
      out.write("            //用户名非法，加红色边框\r\n");
      out.write("            $(\"#user_name\").css(\"border\",\"2px solid red\");\r\n");
      out.write("        }\r\n");
      out.write("        return flag;\r\n");
      out.write("    }\r\n");
      out.write("    //校验密码\r\n");
      out.write("    function checkPassword() {\r\n");
      out.write("        //1.获取密码\r\n");
      out.write("        var password = $(\"#user_password\").val();\r\n");
      out.write("        //2.定义正则\r\n");
      out.write("        var reg_password = /^\\w{6,15}$/;\r\n");
      out.write("\r\n");
      out.write("        //3.判断，给出提示信息\r\n");
      out.write("        var flag = reg_password.test(password);\r\n");
      out.write("        if(flag){\r\n");
      out.write("            //用户名合法\r\n");
      out.write("            $(\"#user_password\").css(\"border\",\"\");\r\n");
      out.write("\r\n");
      out.write("        }else{\r\n");
      out.write("            //用户名非法，加红色边框\r\n");
      out.write("            $(\"#user_password\").css(\"border\",\"2px solid red\");\r\n");
      out.write("        }\r\n");
      out.write("        return flag;\r\n");
      out.write("    }\r\n");
      out.write("    //校验确认密码\r\n");
      out.write("    function checkPassword1() {\r\n");
      out.write("        //1.获取密码\r\n");
      out.write("        var password = $(\"#user_password\").val();\r\n");
      out.write("        var password1 = $(\"#user_password1\").val();\r\n");
      out.write("        if(password==password1){\r\n");
      out.write("            //用户名合法\r\n");
      out.write("            $(\"#user_password1\").css(\"border\",\"\");\r\n");
      out.write("            return password==password1;\r\n");
      out.write("        }else{\r\n");
      out.write("            //用户名非法，加红色边框\r\n");
      out.write("            $(\"#user_password1\").css(\"border\",\"2px solid red\");\r\n");
      out.write("        }\r\n");
      out.write("        return password==password1;\r\n");
      out.write("    }\r\n");
      out.write("    $(function (){\r\n");
      out.write("        //当某一个组件失去焦点时，调用对应的校验方法\r\n");
      out.write("        $(\"#user_name\").blur(checkUsername);\r\n");
      out.write("        $(\"#user_password\").blur(checkPassword);\r\n");
      out.write("        $(\"#user_password1\").blur(checkPassword1);\r\n");
      out.write("        $(\"#user_nick\").blur(checkNick);\r\n");
      out.write("        $(\"#user_age\").blur(checkAge);\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            $(\"#check\").click(function () {\r\n");
      out.write("                if(checkUsername()&&checkPassword()&&checkPassword1()&&checkNick()&&checkAge()) {\r\n");
      out.write("                    var form = document.getElementById(\"form\"); // 由id获取表单\r\n");
      out.write("                    form.submit();//提交表单\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("    });\r\n");
      out.write("\r\n");
      out.write("    $(function () {\r\n");
      out.write("        if (");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty result}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("){\r\n");
      out.write("            alert(\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${result}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\");\r\n");
      out.write("        }\r\n");
      out.write("    })\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}