package com.binhai.service;

import com.binhai.dao.UserDao;
import com.binhai.enity.User;

import java.util.List;

public class UserService {
    UserDao userDao = new UserDao();

    //查询所有用户
    public List selectAll() {
        //  UserDao userDao=new UserDao();
        List userlist = userDao.selectAll();
        return userlist;
    }

    //按用户名查询
    public List selectByName(String name) {
        List user = UserDao.selectByName(name);
        return user;
    }

    //添加用户
    public void saveUser(User user) {
        userDao.saveUser(user);
    }
    //添加用户
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    //删除用户
    public void deleteUser(String id) {
        userDao.deleteUser(id);
    }
}
