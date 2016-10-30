<!DOCTYPE html>
<html>
<head>
    <title>用户编辑</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>


    <!-- jQuery AND jQueryUI -->
    <script type="text/javascript" src="/static/js/libs/jquery/1.6/jquery.min.js"></script>
    <script type="text/javascript" src="/static/js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>

    <link rel="stylesheet" href="/static/css/min.css" />
    <script type="text/javascript" src="/static/js/min.js"></script>

</head>
<body>

<script type="text/javascript" src="/static/content/settings/main.js"></script>
<link rel="stylesheet" href="/static/content/settings/style.css" />

<div id="content" class="white">
    <h1><img src="/static/img/icons/posts.png" alt="" /> 用户信息</h1>

    <div class="bloc">
        <form action="/user/save" method="post" id="machineForm">
            <input type="hidden" name="id" value="${(user.id)!0}">
        <div class="title">设备基本属性</div>
        <div class="content">
            <div class="input">
                <label for="inputName">名字:</label>
                <input class="form-control input-sm required" id="inputName" name="name" value="${(user.name)!""}">
            </div>
            <div class="input">
                <label for="inputSerial">Email:</label>
                <input class="form-control input-sm" id="inputSerial" name="email" value="${(user.email)!""}">
            </div>
            <div class="submit">
                <input type="button" value="确认入库" formtarget="content" onclick="submitMachine()"/>
                <input type="reset" value="重置" class="white"/>
            </div>
        </div>
        </form>
    </div>

</div>
</body>
<script>
    function submitMachine(){
        if($(".required").val=="") {
            alert("必填字段不能为空.");
            return false;
        }
        $.post("/machine/save", $("#machineForm").serialize(), function(r){
            if(r.code==200){
                window.location.href = "/machine/list"
            } else {
                alert("入库失败.请稍后重试.");
            }
        });
    }
</script>
</html>