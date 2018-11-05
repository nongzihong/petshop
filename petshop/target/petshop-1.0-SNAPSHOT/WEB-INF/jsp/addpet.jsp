<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="/js/jquery-1.11.3.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<body style="background-color: #404040; color:teal">
<form action="#">
    <div class="form-group">
        <label for="exampleInputEmail1">类型：</label>
        <select name="" class="form-control" id="exampleInputEmail1">
            <option  value="">1</option>
            <option  value="">2</option>
            <option  value="">3</option>
            <option  value="">3</option>
        </select>
    </div>
    <div class="form-group">
        <label for="exampleInputEmail2">名字：</label>
        <input type="email" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" placeholder="name">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword3">照片：</label>
        <form id="frm_upload" action="#">
        <input type="file" name="multipartFile" class="form-control" id="exampleInputPassword3" placeholder="photoUrls">
        <img style="width: 50px;height:50px;" src="">
            <input type="button" id="btnUpload" value="上传"/>
        </form>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword4">标签：</label>
        <input type="text" class="form-control" id="exampleInputPassword4" placeholder="tags">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword5">状态：</label>
        <input type="text" class="form-control" id="exampleInputPassword5" placeholder="status">
    </div>
    <div class="form-group">
        <input type="submit" class="form-control" value="添加"></input>
    </div>
</form>
</body>
<script type="text/javascript">
    //图片上传点击事件
    $("#btnUpload").click(function () {
        var formData = new FormData($("#frm_upload")[0]);
        $.ajax({
            type: "post",
            url: "/uploadImg",
            data: formData,
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function (data) {
                if (data.false == undefined) {
                    $("#petPhotoUrls").attr("value", data.true);
                    $("#imgShow").attr("src", data.true);
                } else {
                    alert(data.false);
                }
            },
            error: function (data) {
                alert("error:" + data.responseText);
            }
        });
        return false;
    });
</script>
</html>
