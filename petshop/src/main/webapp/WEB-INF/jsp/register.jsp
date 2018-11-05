<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="/css/style.css">
<head>
    <title>Title</title>
</head>
<body>
<form action="/login/add" method="post" style="text-align: center">
    <ul class="left-form">
        <h2>新账户:</h2>
        <li>
            <input type="text"  name="username" placeholder="用户名" required/>
        </li>
        <li>
            <input type="text"  name="firstName"  placeholder="名字" required/>
        </li>
        <li>
            <input type="text" name="lastName"  placeholder="姓" required/>
        </li>
        <li>
            <input type="text" name="email"  placeholder="Email" required/>
        </li>
        <li>
            <input type="password"  name="password"  placeholder="password" required/>
        </li>
        <li>
            <input type="text" name="phone"  placeholder="电话" required/>
        </li>
        <input type="submit" value="创建账户">
    </ul>
</form>
</body>
</html>
