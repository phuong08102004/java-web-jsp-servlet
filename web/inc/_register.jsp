<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="register-section py-5" style="background-color: #f5f5f5;">
    <div class="container">
        <div class="row justify-content-center align-items-center">


            <!-- FORM ĐĂNG KÝ -->
            <div class="col-md-6">
                <div class="register-card p-4 shadow rounded-4 bg-white">

                    <p class="text-center mb-4 text-uppercase fw-bold" style="color:#eab308;">
                        Đăng ký tài khoản
                    </p>
                    <span style="color:red;margin-left: 40px; font-size: 21px;">${exist_user}</span>

                    <form action="${pageContext.request.contextPath}/register" method="post">

                        <!-- Họ tên -->
                        <div class="mb-3">
                            <label class="form-label">Họ và tên</label>
                            <input type="text" name="name" class="form-control form-control-lg" required="required">
                        </div>

                        <!-- Email -->
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="text" name="email" class="form-control form-control-lg" required="required">
                            <span style="color:red">${err_email}</span>
                        </div>

                        <!-- Số điện thoại -->
                        <div class="mb-3">
                            <label class="form-label">Điện thoại</label>
                            <input type="text" name="phone" class="form-control form-control-lg" required="required">
                            <span style="color:red">${err_phone}</span>
                        </div>

                        <!-- Mật khẩu -->
                        <div class="mb-3">
                            <label class="form-label">Mật khẩu</label>
                            <input type="password" name="password" class="form-control form-control-lg" required="required">
                        </div>

                        <!-- Nhập lại mật khẩu -->
                        <div class="mb-3">
                            <label class="form-label">Nhập lại mật khẩu</label>
                            <input type="password" name="repassword" class="form-control form-control-lg" required="required">
                            <span style="color:red">${err_repassword}</span>
                        </div>

                        <span class="text-danger fw-bold">${exist_user}</span>

                        <!-- NÚT ĐĂNG KÝ -->
                        <button type="submit" class="btn w-100 py-2 mt-3"
                                style="background:#F0CC68; color:#000; font-size:18px;">
                            Đăng ký
                        </button>

                        <p class="text-center mt-3">
                            Đã có tài khoản?
                            <a href="${pageContext.request.contextPath}/login"
                               class="text-warning fw-bold">Đăng nhập</a>
                        </p>

                    </form>
                </div>
            </div>

        </div>
    </div>
</section>
