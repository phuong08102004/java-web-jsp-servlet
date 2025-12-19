<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<section class="honey-bg py-5">
    <div class="container">

        <!-- TITLE -->
        <a href="${pageContext.request.contextPath}/home" class="text-decoration-none text-muted">
            ← Tiếp tục mua sắm
        </a>

        <h3 class="mt-3 mb-1">🛒 Giỏ hàng</h3>
        <p class="text-muted">Bạn có ${cart.items.size()} sản phẩm</p>

        <div class="row mt-4">

            <!-- CART LIST -->
            <div class="col-lg-7">

                <c:if test="${empty cart.items}">
                    <div class="alert alert-warning">
                        Giỏ hàng của bạn đang trống
                    </div>
                </c:if>

                <c:forEach var="item" items="${cart.items}">
                    <div class="card mb-3 honey-cart-card">
                        <div class="card-body d-flex align-items-center justify-content-between">

                            <!-- LEFT -->
                            <div class="d-flex align-items-center">
                                <img src="${pageContext.request.contextPath}/assets/images/products/${item.image}"
                                     class="honey-cart-img"
                                     onerror="this.src='${pageContext.request.contextPath}/assets/images/no-image.png'">

                                <div class="ms-3">
                                    <h6 class="mb-1 fw-bold">${item.name}</h6>
                                    
                                </div>
                            </div>

                            <!-- RIGHT -->
                            <div class="text-end">
                                <div class="small mb-1">SL: <strong>${item.quantity}</strong></div>
                                <div class="honey-price mb-1">
                                    <fmt:formatNumber value="${item.price}" type="number"/> đ
                                </div>
                                <a href="cart?action=remove&id=${item.id}"
                                   class="text-danger small text-decoration-none">
                                    ✕ Xóa
                                </a>
                            </div>

                        </div>
                    </div>
                </c:forEach>

            </div>

            <!-- SUMMARY -->
            <div class="col-lg-5">
                <div class="honey-summary p-4">

                    <h5 class="mb-4 fw-bold">Thanh toán</h5>

                    <div class="d-flex justify-content-between mb-2">
                        <span>Tạm tính</span>
                        <span>
                            <fmt:formatNumber value="${subtotal}" type="number"/> đ
                        </span>
                    </div>

                    <div class="d-flex justify-content-between mb-2">
                        <span>Phí vận chuyển</span>
                        <span>20.000 đ</span>
                    </div>

                    <hr>

                    <div class="d-flex justify-content-between mb-4 fw-bold">
                        <span>Tổng cộng</span>
                        <span class="honey-price">
                            <fmt:formatNumber value="${total}" type="number"/> đ
                        </span>
                    </div>

                    <form action="${pageContext.request.contextPath}/checkout" method="post">
                        <button type="submit" class="btn honey-btn w-100 py-2">
                            ĐẶT HÀNG
                        </button>
                    </form>

                </div>
            </div>

        </div>
    </div>
</section>
