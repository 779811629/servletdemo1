package com.binhai.controller;

import com.alibaba.fastjson.JSON;
import com.binhai.dao.UserDao;
import com.binhai.enity.User;
import com.binhai.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/user")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService userService = new UserService();
        //接受参数op
        String op = request.getParameter("op");
        //查询全部用户
        if ("selectAll".equals(op)) {
            //调用service层中的查询方法，返回给变量userlist
            List userlist = userService.selectAll();
            //把list类型转换成json数据格式
            String json = JSON.toJSONString(userlist);
            //处理中文乱码问题
            response.setHeader("Content-type", "text/html;charset=UTF-8");
            response.getWriter().write(json);
        }
        //查询字段用户
        else if ("selectbyname".equals(op)) {
            String name = request.getParameter("name");
            System.out.println(name);
            List user = userService.selectByName(name);
            String json = JSON.toJSONString(user);
            //处理中文乱码问题
            response.setHeader("Content-type", "text/html;charset=UTF-8");
            response.getWriter().write(json);
        }
        //添加用户
        else if ("save".equals(op)) {
            String name = request.getParameter("name");
            String pass = request.getParameter("pass");
            //userService.savaUser(name,pass);
            User user = new User();
            user.setName(name);
            user.setPass(pass);
            userService.saveUser(user);
        }else if ("updateUser".equals(op)){
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String pass = request.getParameter("pass");
            //userService.savaUser(name,pass);
            User user = new User();
            System.out.println(user);
            user.setName(id);
            user.setName(name);
            user.setPass(pass);
            userService.updateUser(user);
        }
        //删除用户
        else if ("deleteUser".equals(op)) {
            String id = request.getParameter("id");
            userService.deleteUser(id);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
