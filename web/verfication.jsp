<%--
  Created by IntelliJ IDEA.
  User: CXD
  Date: 2021/3/15
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //如果用户名是admin，密码是123请求转发到welcome.jsp，否则重定向到login.jsp页面
    //接收表单数据
    String name= request.getParameter("username");
    String pwd=request.getParameter("password");
    if(name.equals("admin")&&pwd.equals("123"))
    {
        //request保存用户名  只保存一次
//        request.setAttribute("name",name);
//        request.setAttribute("password",pwd);
        //session保存用户名   保存在一次会话中
        session.setAttribute("name",name);
        session.setAttribute("password",pwd);
        //请求转发到welcome.jsp
        request.getRequestDispatcher("sunccess.jsp").forward(request,response);
    }
    else {
        //重定向到login.jsp
        response.sendRedirect("login.jsp");
    }
%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="verfication.jsp" method="post">--%>

<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
