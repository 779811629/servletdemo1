<%--
  Created by IntelliJ IDEA.
  User: One
  Date: 2021/4/6
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册页面</title>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
            font-family: 微软雅黑；
        }
        em{
            display: block;
            font-style: normal;
            font-size: 14px;
            color: rgb(14, 14, 14)
        }
        li{
            list-style: none;
            display: inline-block;
        }
        li a{
            text-decoration: none;
        }
        html,body,.wrapper{
            width: 100%;
            height: 100%;
            overflow: hidden;
        }
        .wrapper{
            background:url("images/bj1.jpg");
            background-size: 100% 100%;
            position: relative;

        }
        article{
            width: 1200px;
            margin: 0 auto;
        }
        article{
            width: 400px;
            margin: 100px auto 0px auto;
        }
        article h1{
            width: 400px;
            color: #feffff;
            text-align: center;
            margin-bottom: 15px;
            font-weight: normal;
        }
        article h1 em{
            display: inline-block;
            color: #69a5de;
            font-size: 25px;}
        .main{
            padding: 40px 0px;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.5);
        }
        form{
            width: 297px;
            margin: 0 auto;
        }
        .main form input{
            margin: 10px 0;
            width: 280px;
            height: 35px;
            border-radius: 3px;
            display: inline-block;
            border: 1px solid rgb(165, 161, 161);
            padding-left: 10px;
        }
        form button{
            width: 290px;
            height: 35px;
            background-color: #8bd598;
            color: #fff;
            border:none;
            margin-top: 15px;
            letter-spacing: 10px;
            font-size: 16px;
            text-align: center;}
        footer{
            width: 100%;
            position: absolute;
            left: 0;
            bottom: 50px;
            font-size: 14px;
            color: #5593ce;
        }
        footer ul{
            width: 570px;
            height: 35px;}
        footer p{
            width: 100%;
            text-align: center;}
        footer ul li{
            display: inline-block;
            width: 90px;
            height: 13px;
            line-height: 13px;
            border-right: 1px solid #5593ce;
            text-align: center;
        }
        footer ul li a{
            font-size: 14px;
            color:#5593ce;
        }
        footer ul,footer p{
            margin: 0 auto;
        }
    </style>

    <script>
        function checkpwd(){
            var password = document.getElementById('password').value;
            var repassword = document.getElementById('repassword').value;
            var submit = document.getElementById('submit');
            var repwd = document.getElementById('repassword');
            if(password != repassword){
                repwd.style.border = "1px solid red"
                submit.disabled = true;
                return false;
            }else{
                repwd.style.border = "1px solid green"
                submit.disabled=false;
            }
        }
    </script>
</head>
<body>
<div class="wrapper">
    <article>
        <div class="main" style="border-radius:20px"><h1><span>注册用户</span></h1>
            <form action="Servlet1" role="form" method="post">
                <div class="userName">
                    <input type="text" name="username" id="username" placeholder="用户名">
                    <em>由5-8个字符组成</em>
                </div>
                <div class="password">
                    <input type="password" name="password" id="password" placeholder="密码">
                    <em>使用字母或数字，6-8个字符</em>
                </div>
                <div class="againpwd">
                    <input type="password" name="repassword" id="repassword" placeholder="再次输入密码" onblur="checkpwd()">
                    <em>两次密码需一致</em>
                </div>
                <button id="submit">注册</button>
            </form>
        </div>
    </article>
</div>
</body>
</html>
