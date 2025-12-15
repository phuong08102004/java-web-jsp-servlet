/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package nhphuong.data.web;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import nhphuong.data.dao.Database;
import nhphuong.data.model.Category;
import nhphuong.data.model.Product;

/**
 *
 * @author Asus ROG G513IH
 */
public class HomeServlet extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Category> listCategory = Database.getCategoryDao().findAll();
        request.setAttribute("listCategory", listCategory);
        List<Product> listProduct = Database.getProductDao().findAll();
        request.setAttribute("listProduct", listProduct);
        request.setAttribute("title", "Honey Bee");
        String id_category = request.getParameter("id_category");
        request.setAttribute("id_category", id_category);
        request.getRequestDispatcher("./views/home.jsp").include(request, response);
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    

}
