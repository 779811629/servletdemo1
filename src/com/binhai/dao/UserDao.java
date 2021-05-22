package com.binhai.dao;


import com.binhai.db.DButil;
import com.binhai.enity.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserDao {
    public List selectAll() {
        List list = new ArrayList();
        // User user=new User();
        Connection con = DButil.getConnection();
        String sql = "select *from tb_user";
        Statement st = null;
        try {
            st = con.createStatement();
            ResultSet resultSet = st.executeQuery(sql);
            while (resultSet.next()) {
                // System.out.println("hello");
                Map map = new HashMap();
                map.put("id", resultSet.getInt("id"));
                map.put("name", resultSet.getString("name"));
                map.put("pass", resultSet.getString("pass"));
                // map.put("beizhu", resultSet.getString("beizhu"));
                list.add(map);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static List selectByName(String name) {
        List list = new ArrayList();
        List user = null;
        Connection con = DButil.getConnection();
//        String sql="select * from tb_user where name='"+name+"'";//按全名查找
        String sql = "select * from tb_user where name like '" + name + "%'";//按首字母查找
        Statement st = null;
        try {
            st = con.createStatement();
            ResultSet resultSet = st.executeQuery(sql);
            while (resultSet.next()) {
                // System.out.println("hello");
                Map map = new HashMap();
                map.put("id", resultSet.getInt("id"));
                map.put("name", resultSet.getString("name"));
                map.put("pass", resultSet.getString("pass"));
                // map.put("beizhu", resultSet.getString("beizhu"));
                list.add(map);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    //添加用户
    public void saveUser(User user) {
        try {
            Connection connection = DButil.getConnection();
            Statement statement = connection.createStatement();
            String sql = "insert into tb_user value(0,'" + user.getName() + "','" + user.getPass() + "')";
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //删除用户
    public void deleteUser(String id) {
        try {
            Connection connection = DButil.getConnection();
            Statement statement = connection.createStatement();
            String sql = "delete from tb_user where id=" + id;
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateUser(User user) {
        try {
            Connection connection = DButil.getConnection();
            Statement statement = connection.createStatement();
            String sql = "update tb_user set name ="+user.getName()+"pass="+user.getPass()+"  where id=" + user.getId();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
