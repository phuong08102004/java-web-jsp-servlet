<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="hoangphuong.utils.API" %>
<!-- menu -->
<nav>
        <!-- DẢI VÀNG CHỨA LOGO -->
     <div class="honey-welcome-bar">
         <img src="./assets/icon/logobee.png" height="55" alt="logo">
         <span>CHÀO MỪNG ĐẾN VỚI HONEYBEE STORE </span>
     </div>

     <!-- MENU dEN -->
     <div class="navbar navbar-expand-lg sticky-top" style="background:#000; font-weight:bold;" >
         <div class="container">


             <!-- MENU trai -->
             <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="align-items:center;">

                 <!-- HOME -->
                 <li class="nav-item">
                     <a class="nav-link menu-link" href="/honeybee/home">Trang chủ</a>
                 </li>

                 <!-- CATEGORY -->
                 <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle text-white" href="#" role="button" 
                        data-bs-toggle="dropdown" aria-expanded="false">
                         Sản phẩm
                     </a>

                     <ul class="dropdown-menu">
                         <c:forEach items="${listCategory}" var="category">
                             <li><a class="dropdown-item"href="./home?id_category=${category.id}">${category.name}</a></li>
                         </c:forEach>
                     </ul>
                 </li>
                 <li class="nav-item">
                     <a class="nav-link menu-link" href="#">Giới thiệu</a>
                 </li>
             </ul>
              <!-- LOGO Ở GIỮA -->
                 <div class="nav-logo">
                     <img src="./assets/images/logo.png" height="55" alt="logo">
                 </div>


             <div class="menu-right d-flex align-items-center">

                <!-- SEARCH -->
                <li class="nav-item me-3">
                    <a href="#" class="nav-link icon-link">
                        <img src="https://cdn-icons-png.flaticon.com/512/622/622669.png" width="22">
                    </a>
                </li>

                    <!-- CART -->
                    <li class="nav-item me-3 position-relative">
                        <a href="cart" class="nav-link icon-link">
                            <img src="https://cdn-icons-png.flaticon.com/512/833/833314.png" width="24">
                            <span class="cart-badge">${cart.size()}</span>
                        </a>
                    </li>

                    <!-- USER -->
                    <c:if test="${user==null}">
                    <li class="nav-item">
                        <a href="${pageContext.request.contextPath}/login" class="nav-link icon-link">
                            <img src="https://cdn-icons-png.flaticon.com/512/456/456212.png" width="22">
                        </a>
                    </li>
                    </c:if>
                    <c:if test="${user!=null}">
                        <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle text-white" href="#" role="button" 
                        data-bs-toggle="dropdown" aria-expanded="false">
                         HI, 
                         <c:set var="s" value="${user.getName()}"></c:set>
                         <%
                             String name = (String)pageContext.getAttribute("s");
                             out.print(API.getName(name));
                             
                         %>
                     </a>

                     <ul class="dropdown-menu">
                         <li><a class="dropdown-item" herf="#">Profile</a></li>
                         <li><a class="dropdown-item" herf="./views/logout.jsp">Logout</a></li>
                            </ul>
                        </li>
                    </c:if>
                    
                </div>


         </div>
     </div>
</nav>
    <!-- menu -->