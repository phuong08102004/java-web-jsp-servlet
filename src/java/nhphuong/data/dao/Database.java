/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package nhphuong.data.dao;

import nhphuong.data.impl.CategoryImpl;
import nhphuong.data.impl.ProductImpl;
import nhphuong.data.impl.UserImpl;


/**
 *
 * @author Asus ROG G513IH
 */
public class Database {
    public static CategoryDao getCategoryDao(){
        return new CategoryImpl();
    }
    
    public static ProductDao getProductDao(){
        return new ProductImpl();
    }
    
    public static UserDao getUserDao(){
        return new UserImpl();
    }
}
