<%--
  Created by IntelliJ IDEA.
  User: CXD
  Date: 2021/3/15
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="commin.jsp"></jsp:include>
    <title>登录</title>
    <%--    <%--%>
    <%--        String code=request.getCharacterEncoding();--%>
    <%--    %>--%>
    <style type="text/css">
        body {
            background: url(images/bj1.jpg);
            background-size: 100% 100%;
            position: relative;
            font-size: 16px;
        }

        .form {
            background: rgba(255, 255, 255, 0.5);
            width: 500px;
            margin: 100px auto;
        }

        #login_form {
            display: block;
        }

        #register_form {
            display: none;
        }

        .fa {
            display: inline-block;
            top: 27px;
            left: 6px;
            position: relative;
            color: #ccc;
        }

        input[type="text"], input[type="password"] {
            padding-left: 26px;
        }

        .checkbox {
            padding-left: 21px;
        }

    </style>
</head>
<body>

<%--<form action="verfication.jsp" method="post">--%>
<%--    用户名：<input type="text" name="username"/><br/>--%>
<%--    密  码：<input type="password" name="password"/><br/>--%>
<%--    <input type="submit" value="登录"/>--%>
<%--</form>--%>

<div class="container">
    <div class="form row" style="border: #0f0f0f 1px solid;border-radius: 30px">
        <form class="form-horizontal col-sm-offset-3 col-md-offset-3" id="login_form" action="login" role="form"
              method="post">
            <h3 class="form-title">欢迎登录学生信息管理系统</h3>
            <div class="col-sm-9 col-md-9">
                <div class="form-group">用户名：
                    <input class="form-control" type="text" placeholder="请输入用户名" name="username" autofocus="autofocus"
                           maxlength="20"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>密 码 ：
                    <input class="form-control" type="password" placeholder="请输入密码" name="password" maxlength="8"/>
                </div>
                <div class="form-group">
                    <label class="checkbox">
                        <input type="checkbox" name="remember" value="1"/>
                        <p>记住我</p>
                    </label>
                    <hr/>
                    <a href="zhuce.jsp" id="register_btn" class="">创建账号</a>
                </div>
                <br>
                <div class="form-group">
                    <input type="submit" class="btn btn-success pull-right" value="登录 "/>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>
