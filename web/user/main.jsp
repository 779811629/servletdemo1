<%--
  Created by IntelliJ IDEA.
  User: CXD
  Date: 2021/4/19
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../commin.jsp"></jsp:include>
    <%--    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <script src="main.js"></script>
</head>
<body>
<%--title区域--%>
<div style="height: 40px;background-color: #639cc6">
        <span class="glyphicon glyphicon-user" style="color: #eef1f3;font-size: 20px;
        margin-left: 10px;line-height: 40px">&nbsp;用户管理</span>
</div>
<%--title区域结束--%>
<%--操作区域--%>
<div style="height: 50px;margin-top: 10px;margin-left: 18px">
    <button class="btn btn-primary btn-sm" style="border-radius: 10px;" data-toggle="modal"
            data-target="#myModal">
        <%--        onclick="openAdd()"--%>
        <span class="glyphicon glyphicon-plus">添加</span>
    </button>
    <button class="btn btn-danger btn-sm" style="border-radius: 10px;">
        <span class="glyphicon glyphicon-trash"> 批量删除</span>
    </button>
    <span style="width: 150px;margin-top: 30px;font-size: 16px">用户名：<input type="text" id="sname" maxlength="20"></span>
    <button class="btn btn-primary btn-sm" style="border-radius: 10px" onclick="selectbyname()">
        <span class="glyphicon glyphicon-search"> 查询</span>
    </button>

</div>
<%--操作区域结束--%>
<%--数据区域--%>
<div>
    <table class="table table-striped table-bordered table-hover" id="userlist">
        <thead style="background-color: #d4d4d4">
        <tr>
            <th align="center" width="60px">序号</th>
            <th align="center">用户名</th>
            <th align="center">密码</th>
            <th width="120px" align="center">操作</th>
        </tr>
        </thead>
    </table>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" data-toggle="modal" aria-labelledby="myModalLabel"
     aria-hidden="true" tabindex="-1" role="dialog" style="display:none">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">
                    <span style="text-align: left"> 添加用户</span>
                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>

            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <%--隐藏字段--%>
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        用户名：<input class="form-control" id="name" value="">
                    </div>
                    <div class="form-group">
                        密码：<input type="password" class="form-control" id="pass" value="">
                    </div>
                    <input type="hidden">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" onclick="save()">
                    提交
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>
