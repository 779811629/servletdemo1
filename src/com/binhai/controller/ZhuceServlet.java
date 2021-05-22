package com.binhai.controller;

import com.binhai.service.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Servlet1", value = "/Servlet1")
public class ZhuceServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        HttpSession session= request.getSession();
        String name =request.getParameter("username");
        String pwd=request.getParameter("password");
        //向数据库表中插入name和pwd
        //如果存在请求转发到login.jsp,否则，重定向到zhuce.jsp
        //实例化
        LoginService zhuceService=new LoginService();
//        ZhuceService zhuceService=new ZhuceService();
        int zhuceuser=zhuceService.selectuzhuce(name,pwd);
        if (zhuceuser>0){
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
        else {
            response.sendRedirect("zhuce.jsp");
        }
    }

}
