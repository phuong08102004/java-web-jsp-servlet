/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package nhphuong.data.impl;

import hoangphuong.utils.API;
import java.sql.Connection;
import nhphuong.data.dao.UserDao;
import nhphuong.data.driver.MySQLDriver;
import nhphuong.data.model.User;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Asus ROG G513IH
 */
public class UserImpl implements UserDao {
    Connection con = MySQLDriver.getConnection();
   
    @Override
    public User findUser(String emailphone, String password){
        String sql;
        if(emailphone.contains("@"))sql="select * from users where email='"+emailphone+"' and password='"+API.getMd5(password)+"'";
        else sql="select * from users where phone='"+emailphone+"' and password='"+API.getMd5(password)+"'";
        try {
            PreparedStatement sttm = con.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            if(rs.next()) return new User(rs);
        } catch (SQLException ex) {
            Logger.getLogger(UserImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    @Override
    public User findUser(String emailphone){
        String sql;
        if(emailphone.contains("@"))sql="select * from users where email='"+emailphone+"'";
        else sql="select * from users where phone='"+emailphone+"'";
        try {
            PreparedStatement sttm = con.prepareStatement(sql);
            sttm.executeUpdate();
            ResultSet rs = sttm.executeQuery();
            if(rs.next()) return new User(rs);
        } catch (SQLException ex) {
            Logger.getLogger(UserImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    @Override
    public void insertUser(String name, String email, String phone, String password){
        String sql="insert into users(name, email, phone, password, role) values('"+name+"','"+email;
        sql = sql +"','"+phone+"','"+password+"','')";
        try{
            PreparedStatement sttm = con.prepareStatement(sql);
            sttm.execute();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
    
