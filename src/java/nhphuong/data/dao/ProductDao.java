/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package nhphuong.data.dao;

import java.util.List;
import nhphuong.data.model.Product;

/**
 *
 * @author Asus ROG G513IH
 */
public interface ProductDao {
    public List<Product> findAll();
    public Product findProduct(int id_product);
    
}
