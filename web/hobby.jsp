<%--
  Created by IntelliJ IDEA.
  User: CXD
  Date: 2021/3/24
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>爱好</title>
</head>
<body>
<form action="hobby" method="post">
    爱好：<br/>
    <input type="checkbox" name="hobby" value="读书">读书
    <input type="checkbox" name="hobby" value="打字">打字
    <input type="checkbox" name="hobby" value="游戏">游戏
    <input type="checkbox" name="hobby" value="看电影">看电影
    <br/>
    <input type="submit" name="submit" value="提交">
</form>
</body>
</html>
