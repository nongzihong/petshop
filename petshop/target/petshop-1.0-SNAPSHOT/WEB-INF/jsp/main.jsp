<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    table {
        margin: auto;
        width: 90%;
        height:100px;
        border-collapse: collapse;
    }

    th, td {
        text-align: center;
        padding: 5px;
        border: 1px solid black;
    }
    a{text-decoration: none}
</style>
<h1 style="text-align: center">宠物商城</h1>
<body>
<form style="text-align: center" action="/pet/query" method="post">
  按名字查询：  <input type="text" placeholder="名字" name="name">
    <input type="submit" value="搜索">
</form>
<table>
    <tbody>
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>图片</th>
        <td>价格</td>
        <th>标签</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${list}" var="v">
        <tr>
            <td>${v.pid}</td>
            <td>${v.name}</td>
            <td><img width="200px" height="150px" src="/img/${v.photoUrls}"></td>
            <td>${v.price}</td>
            <td>${v.tags}</td>
            <td>${v.status}</td>
            <td>
                <a href="/pet/del/${v.pid}">删除</a></br></br>
                <a href="/pet/add">添加</a></br></br>
                <a href="/pet/update/${v.pid}">修改</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
