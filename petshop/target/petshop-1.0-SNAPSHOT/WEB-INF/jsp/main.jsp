<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    table,th,td{
        border:1px solid black;
        border-collapse: collapse;
        padding: 10px;
    }
</style>
<body>
<table>
    <tbody>
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>图片</th>
        <th>标签</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${list}" var="v">
    <tr>
        <td>${v.pid}</td>
        <td>${v.name}</td>
        <td><img width="100px" height="100px" src="/img/${v.photoUrls}"></td>
        <td>${v.tags}</td>
        <td>${v.status}</td>
        <td><a href="/pet/del/${v.pid}">删除</a> <a href="#">添加</a> <a href="#">修改</a></td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
