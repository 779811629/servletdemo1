package com.binhai.service;

import com.binhai.dao.LoginDao;

public class LoginService {
    public Boolean selectuser(String name, String pwd) {
//实例化
        LoginDao loginDao=new LoginDao();
        Boolean isuser=loginDao.selectuser(name,pwd);
        return isuser;
    }

    //注册
    public int selectuzhuce(String name,String pwd){
        //实例化
        LoginDao loginDao=new LoginDao();
        int zhuceuser=loginDao.selectzhuce(name,pwd);
        return zhuceuser;
    }
}
