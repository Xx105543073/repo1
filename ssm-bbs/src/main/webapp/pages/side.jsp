<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<!-- 导航侧栏 -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="${path}/${user.user_avatar}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>${user.user_nick}</p>
                <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
            </div>
        </div>
        <!-- search form -->
        <!--<form action="#" method="get" class="sidebar-form">
    <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="搜索...">
        <span class="input-group-btn">
        <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
        </button>
      </span>
    </div>
</form>-->
        <!-- /.search form -->


        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">菜单</li>

            <li id="admin-index"><a href="${path}/tip/findAll.do"><i class="fa fa-dashboard"></i> <span>首页</span></a>
            </li>

            <!-- 菜单 -->
            <c:if test="${user.user_type==0||user.user_type==1}">
            <li class="treeview">
            <a href="javascript:void(0)">
                <i class="fa fa-folder"></i> <span>管理员功能</span>
                <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
            </a>
            <ul class="treeview-menu">
                <li>
                    <a href="${path}/user/findAll.do">
                        <i class="fa fa-circle-o"></i> 用户管理
                    </a>
                </li>

                <li>
                    <a href="${path}/tip/mFindAll.do">
                        <i class="fa fa-circle-o"></i> 帖子管理
                    </a>
                </li>
            </ul>
        </li>
            </c:if>
            <li class="treeview">

                    <li id="admin-login">
                        <a data-toggle="modal" data-target="#addTip">
                            <i class="fa fa-circle-o"></i> <span>发帖</span>
                        </a>
                    </li>
                    <li id="admin-register">
                        <a href="${path}/user/findUserMsg.do?user_name=${user_username}" >
                            <i class="fa fa-circle-o"></i> <span>个人中心</span>
                        </a>
                    </li>
                    <li>
                        <a href="${path}/tip/findFavoriteByUserId.do?user_id=${user.user_id}">
                            <i class="fa fa-circle-o"></i> <span>我的收藏</span>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
<!-- 导航侧栏 /-->
</body>
</html>

