<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
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
                                    <option name="tab_id" value="1">学习与思考</option>
                                    <option name="tab_id" value="2">生活与感悟</option>
                                    <option name="tab_id" value="3">娱乐</option>
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
</body>
</html>
