<%--
  Created by IntelliJ IDEA.
  User: CXD
  Date: 2021/3/21
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
欢迎<%=session.getAttribute("name")%>登录，成功
<a href="jiesuan.jsp">结算</a>
</body>
</html>
