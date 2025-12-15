/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package nhphuong.data.dao;

import nhphuong.data.model.User;

/**
 *
 * @author Asus ROG G513IH
 */
public interface UserDao {
    public User findUser(String emailphone, String password);
    public User findUser(String emailphone);
    public void insertUser(String name, String email,String phone, String password);
}
