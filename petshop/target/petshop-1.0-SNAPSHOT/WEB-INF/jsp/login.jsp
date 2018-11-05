<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Form</title>
</head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="stylesheet" href="/css/style.css">
<body>
<section class="container">
    <div class="login">
        <h1>用户登录</h1>
        <form method="post" action="/login">
            <p><input type="text" name="username" value="" placeholder="用户名"></p>
            <p><input type="password" name="password" value="" placeholder="密码"></p>
            <p class="remember_me">
                <label>
                    <input type="checkbox" name="remember_me" id="remember_me">
                    记住密码
                </label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span style="color: red;font-size: 20px">${err}</span>
                <span style="color: green;font-size: 20px">${reg}</span>
            <p class="submit"><input type="submit" name="commit" value="登录"></p>
        </form>
    </div>

    <div style="font-size: 20px;" class="login-help">
        <p>注册? <a href="/login/reg">点击</a></p>
    </div>
</section>
</body>
</html>
