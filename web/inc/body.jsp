<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${id_category==null}">
<!-- PRODUCTS -->
<c:forEach items="${listCategory}" var="category">
<section>
    <div class="container my-5">

        <header class="mb-4">
            <h3 class="category-title">${category.name}</h3>
        </header>

        <div class="row">

            <c:forEach items="${listProduct}" var="product">
                <c:if test="${category.id == product.id_category && product.status}">

                    <div class="col-md-3 col-sm-6 mb-4">
                        <div class="product-card">

                            <div class="product-img">
                                <img src="./assets/images/${product.image}" class="img-fluid">
                            </div>

                            <div class="product-info">
                                <h5 class="product-name">${product.name}</h5>
                                <p class="product-price">${product.price} VNĐ</p>
                                <button class="btn-buy">Thêm vào giỏ</button>
                            </div>

                        </div>
                    </div>

                </c:if>
            </c:forEach>

        </div>

         </div>
        </section>
    </c:forEach>
</c:if>


<c:if test="${id_category!=null}">
<!-- PRODUCTS -->
<c:forEach items="${listCategory}" var="category">
    <c:if test="${category.id==id_category}">
<section>
    <div class="container my-5">

        <header class="mb-4">
            <h3 class="category-title">${category.name}</h3>
        </header>

        <div class="row">

            <c:forEach items="${listProduct}" var="product">
                <c:if test="${category.id == product.id_category}">

                    <div class="col-md-3 col-sm-6 mb-4">
                        <div class="product-card">

                            <div class="product-img">
                                <img src="./assets/images/${product.image}" class="img-fluid">
                            </div>

                            <div class="product-info">
                                <h5 class="product-name">${product.name}</h5>
                                <p class="product-price">${product.price} VNĐ</p>
                                <button class="btn-buy">Thêm vào giỏ</button>
                            </div>

                        </div>
                    </div>

                </c:if>
            </c:forEach>

        </div>

         </div>
        </section>
        </c:if>
    </c:forEach>
</c:if>