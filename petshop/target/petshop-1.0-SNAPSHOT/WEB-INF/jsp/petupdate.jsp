<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    #div {
        border: 1px solid black;
        width: 600px;
        margin: auto;
        border: none;
    }
</style>
<div id="div">
<form action="/pet/rev" method="post">
    编号: <input style="background-color: gray" type="text" readonly name="pid" value="${pet.pid}"><br><br>
    姓名: <input type="text" name="name" value="${pet.name}"><br><br>
    图片: <input type="file" name="file">
    <div style="width: 200px;height: 200px;"><img src="/img/${pet.photoUrls}"></div>
    价格: <input type="text" name="price" value="${pet.price}"><br><br>
    标签: <input style="width:100%; border: none " name="tags" type="text" value="${pet.tags}"><br><br>
    状态：<input type="text" name="status" value="${pet.status}">
    <input type="submit" value="保存">
</form>
</div>
</body>
</html>
