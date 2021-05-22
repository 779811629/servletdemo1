<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2021/3/22
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<%
String userName = "";
String password = "";
Cookie[] cookies = request.getCookies();
if (cookies !=null){
    for (Cookie cookie:cookies){
        if (cookie !=null){
            String cookieName = cookie.getName();
            if ("userName".equals(cookieName)){
                userName = cookie.getValue();
            }else if ("password".equals(cookieName)){
                password = cookie.getValue();
            }
        }
    }
}
String msg = (String)request.getParameter("msg");
if (msg != null){
    response.getWriter().print("<font color='red'>"+ msg +"</font><br/>");
}
String contexPath = request.getContextPath();
%>
<form action="<%=contexPath%>/CASServlet?action=cookie" method="post">
    用户名：<input type="text" name="userName" value="<%=userName %>" /><br/>
    密码：<input type="password" name="password" value="<%=password%>" /><br/>
    持久Coolie:<input type="radio" name="rememberMe" value="120" checked /><br/>
    会话Coolie:<input type="radio" name="rememberMe" value="-1" /><br/>
    删除Coolie:<input type="radio" name="rememberMe" value="0" /><br/>
    仅对当前web项目有效：
    <input type="radio" name="path" value="<%=contexPath%>" checked /><br/>
    对当前web服务器部署的所有web项目有效：
    <input type="radio" name="path" value="/" /><br/>
    <input type="submit" value="登录" />
</form>
</body>
</html>
