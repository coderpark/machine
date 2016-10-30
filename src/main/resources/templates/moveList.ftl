<!DOCTYPE html>
<html>
<head>
    <title>变更列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>


    <!-- jQuery AND jQueryUI -->
    <script type="text/javascript" src="/static/js/libs/jquery/1.6/jquery.min.js"></script>
    <script type="text/javascript" src="/static/js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>

    <link rel="stylesheet" href="/static/css/min.css" />
    <script type="text/javascript" src="/static/js/min.js"></script>

</head>
<body>
<div id="content" class="white">
<h1><img src="/static/img/icons/posts.png" alt="" /> 变更记录</h1>
<div class="bloc">
    <div class="title">
        设备变更
    </div>
    <div class="content">
        <table>
            <thead>
            <tr>
                <th><input type="checkbox" class="checkall"/></th>
                <th>设备名称</th>
                <th>借用人</th>
                <th>归还时间</th>
                <th>是否归还</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <#list pageInfo.list as move>
            <tr>
                <td><input type="checkbox" /></td>
                <td><a href="/move/edit/${move.id}">${(move.machineName)!""}</a></td>
                <td>${(move.userName)!""}</td>
                <td>${(move.backTime?string("yyyy-MM-dd HH:mm:ss"))!""}</td>
                <td><#if move.isBack?? && move.isBack == true>是<#else>否 </#if></td>
                <td class="actions">
                    <a href="##" onclick="move(${move.id})" title="调度"><img src="/static/img/icons/actions/edit.png" alt="" /></a>
                    <a href="#" title="Delete this content"><img src="/static/img/icons/actions/delete.png" alt="" /></a>
                </td>
            </tr>
            </#list>
            </tbody>
        </table>
        <div class="left input">
            <select name="action" id="tableaction">
                <option value="">Action</option>
                <option value="delete">删除</option>
            </select>
        </div>
        <div class="pagination">
            <#if pageInfo.hasPreviousPage == true>
            <a href="/machine/list?page=${pageInfo.firstPage}" class="prev">«</a>
            <a href="/machine/list?page=${pageInfo.prePage}">${pageInfo.prePage!}</a>
            </#if>
            <a href="#" class="current">${pageInfo.pageNum}</a>
            <#if pageInfo.hasNextPage == true>
            <a href="/machine/list?page=${pageInfo.nextPage}">${pageInfo.nextPage!}</a>
            <a href="/machine/list?page=${pageInfo.lastPage}" class="next">»</a>
            </#if>
        </div>
    </div>
</div>
</div>
<script>
    function move(id){
        $.ajax({
            url: "/machine/move/" + id,
            type: "get",
            dataType: "json",
            success: function(vo) {
                if(vo.code == 200) {
                    $("#machineName").val(vo.content.machine.name);
                    $("#machineId").val(id);
                    $("#roles").empty();
                    $("#roles").append("<option value='0'>请选择部门</option>");
                    $("#users").empty();
                    $("#users").append("<option value='0'>请选择</option>");

                    $("#moveControl a").removeClass("hide");
                    $("#move-display").show();

                    $.each(vo.content.roles, function(i,item){
                        $("#roles").append("<option value='" + item.id + "'>" + item.name + "</option>");
                    });
                }
            }
        });
    }
    $(function(){
        $("#roles").change(function(){
            var roleId = $(this).val();
            $.ajax({
                url: "/role/" + roleId + "/users",
                type: "get",
                dataType: "json",
                success: function(result) {
                    if(result.code == 200) {
                        $("#users").empty();
                        $("#users").append("<option value='0'>请选择</option>");
                        $.each(result.content, function(i, item){
                            console.log(item.name);
                            $("#users").append("<option value='" + item.id + "'>" + item.name + "</option>")
                        });
                    }
                }
            });
        });

        $("#users").change(function(){
            $("#machineUser").val($("#users").val());
        });


        $("#moveControl a").addClass("hide");
        $("#move-display").hide();
    });

    function moveFormSubmit(){
        if($("#uniform-isBack span").hasClass("checked")) {
            $("#isBackValue").val(1);
        }
        $.post("/machine/move/add", $("#moveForm").serialize(), function(r){
            if(r.code == 200) {
                alert("设备已变更.");
            } else {
                alert(r.content);
            }
        })
    }

</script>
</body>
</html>