package com.binhai.db;

import java.sql.*;

//数据库链接工具
public class DButil {
    private static String driver="com.mysql.jdbc.Driver";
    private static String url="jdbc:mysql://localhost:3306/javaweb";
    private static String username="root";
    private static String password="123";
    //定义数据库链接方法
    //获取数据库链接 @return
    public static Connection getConnection(){
        Connection con=null;
        //加载驱动
        try {
            Class.forName(driver);
            con= DriverManager.getConnection(url,username,password);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

}
