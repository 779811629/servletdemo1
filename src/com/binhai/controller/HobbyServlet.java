//package com.binhai.controller;
//
//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.IOException;
//
//@WebServlet(name = "HobbyServlet", value = "/hobby")
//public class HobbyServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        //设置对象编码格式
//        response.setContentType("text/html:charset=utf-8");
//        request.setCharacterEncoding("utf-8");
//        //接受提交的爱好
//        // request.getParameterValues("hobby");//接收多个值
//        String [] hobbys=request.getParameterValues("hobby");
//        //先在控制台输出
//        String likes="";
//        for(int i=0;i<hobbys.length;i++){
////            System.out.println(hobbys[i]+",");
//            likes+=hobbys[i]+",";
//        }
//        request.setAttribute("likes",likes);//保存值
//        request.getRequestDispatcher("newhobby.jsp").forward(request,response);
//    }
//}
