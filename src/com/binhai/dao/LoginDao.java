package com.binhai.dao;

import com.binhai.db.DButil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao {
    public Boolean selectuser(String name, String pwd) {
        //加载驱动，创建链接，定义SQL，执行SQL返回结果
        Connection connection= DButil.getConnection();
        String sql="select * from tb_user where name='"+name+"' and pass='"+pwd+"'";
        try {
            Statement statement=connection.createStatement();
            ResultSet rs=statement.executeQuery(sql);
            if(rs.next()){
                return true;
            }
            else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public int selectzhuce(String name,String pwd){
        int work=-1;
        //1.加载驱动
        //2.创建连接
        Connection conn= DButil.getConnection();
        Statement stmt=null;
        try {
            //3.定义sql语句
            stmt = conn.createStatement();
            String sql="insert into tb_user value (null,'"+name+"','"+pwd+"')";
            System.out.println("------注册用户：------\n" + sql);
            //4.执行sql，返回结果
            work = stmt.executeUpdate(sql);
            if (work>0){
                System.out.println("------注册成功------");
            }else {
                System.out.println("------注册失败------");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return work;
    }
}
