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
            <p><input type="text" name="username" value="" placeholder="邮箱"></p>
            <p><input type="password" name="password" value="" placeholder="密码"></p>
            <p class="remember_me">
                <label>
                    <input type="checkbox" name="remember_me" id="remember_me">
                    记住密码
                </label>
            </p>
            <p class="submit"><input type="submit" name="commit" value="登录"></p>
        </form>
    </div>

    <div class="login-help">
        <p>忘记密码? <a href="index.html">点击修改</a>.</p>
    </div>
</section>
</body>
</html>
