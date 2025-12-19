<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập - HoneyBee</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">

    <style>
        body {
            background: #fff9d9; /* vàng nhạt */
            font-family: Arial, sans-serif;
        }

        .login-wrapper {
            max-width: 420px;
            margin: 60px auto;
            background: white;
            border-radius: 12px;
            padding: 35px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        .login-title {
            text-align: center;
            font-weight: 700;
            font-size: 26px;
            color: #000;
            margin-bottom: 10px;
        }

        .login-sub {
            text-align: center;
            font-size: 14px;
            margin-bottom: 25px;
            color: #777;
        }

        .form-control {
            padding: 12px;
            border-radius: 6px;
            border: 1px solid #ddd;
        }

        .btn-login {
            width: 100%;
            padding: 12px;
            background: #F3C623;
            border: none;
            font-size: 17px;
            font-weight: bold;
            border-radius: 5px;
        }

        .btn-login:hover {
            background: #e0b41f;
        }

        .login-footer {
            margin-top: 20px;
            text-align: center;
        }

        .login-footer a {
            color: #333;
            text-decoration: none;
            font-weight: 600;
        }

        .login-footer a:hover {
            color: #F3C623;
        }
    </style>
</head>

<body>

    <div class="login-wrapper">

        <h2 class="login-title">Đăng nhập</h2>
        <p class="login-sub">Chào mừng bạn đến với HoneyBee Store</p>

        <!-- FORM LOGIN -->
        <form action="${pageContext.request.contextPath}/login" method="post">

            <div class="mb-3">
                <label class="form-label">Tên đăng nhập</label>
                <div class="link-danger">${error_login}</div>
                <input type="text" name="emailphone" class="form-control" required placeholder="Enter email or phone number">
            </div>

            <div class="mb-3">
                <label class="form-label">Mật khẩu</label>
                <input type="password" name="password" class="form-control" required placeholder="Enter password">
            </div>

            <button type="submit" class="btn-login">Đăng nhập</button>

        </form>

        <div class="login-footer">
            <p>Chưa có tài khoản? <a href="register">Đăng ký ngay</a></p>
        </div>

    </div>

</body>
</html>
