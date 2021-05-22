package com.binhai.controller;

import com.binhai.service.LoginService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html:charset=utf-8");
//        response.getWriter().write("你好");
        HttpSession  session = request.getSession();//获取session对象
        String name= request.getParameter("username");
        String pwd=request.getParameter("password");
        request.getSession().setAttribute("username",name);
//        if(name.equals("admin")&&pwd.equals("123"))
//        {
//            //request保存用户名  只保存一次
////        request.setAttribute("name",name);
////        request.setAttribute("password",pwd);
//            //session保存用户名   保存在一次会话中
//            session.setAttribute("name",name);
//            session.setAttribute("password",pwd);
//            //请求转发到welcome.jsp
//            request.getRequestDispatcher("index.jsp").forward(request,response);
//        }
//        else {
//            //重定向到login.jsp
//            response.sendRedirect("login.jsp");
//        }
        //向数据库表中查询是否存在name和pwd
        //如果存在，请求转发到index.jsp，否则，重定向到login.jsp
        //实例化
        LoginService loginService=new LoginService();
        Boolean isuser=loginService.selectuser(name,pwd);
        if(isuser){
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
        else {
            response.sendRedirect("login.jsp");
        }

        
    }
}
