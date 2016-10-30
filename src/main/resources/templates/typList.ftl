<!DOCTYPE html>
<html>
<head>
    <title>Your Admin Panel</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>


    <!-- jQuery AND jQueryUI -->
    <script type="text/javascript" src="/static/js/libs/jquery/1.6/jquery.min.js"></script>
    <script type="text/javascript" src="/static/js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>

    <link rel="stylesheet" href="/static/css/min.css" />
    <script type="text/javascript" src="/static/js/min.js"></script>

</head>
<body>
<div id="content" class="white">
<h1><img src="/static/img/icons/posts.png" alt="" /> Table</h1>
<div class="bloc">
    <div class="title">
        设备类型列表
    </div>
    <div class="content">
        <table>
            <thead>
            <tr>
                <th><input type="checkbox" class="checkall"/></th>
                <th>设备类型</th>
            </tr>
            </thead>
            <tbody>
            <#list pageInfo.list as typ>
            <tr>
                <td><input type="checkbox" /></td>
                <td>${typ.name!}</td>
                <td class="actions">
                    <a href="javascript:void(0)" title="Delete this content"><img src="/static/img/icons/actions/delete.png" alt="" /></a>
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

    <div class="bloc">
        <form action="" method="post" id="machineTyp">
        <div class="title" id="moveControl">添加设备类型</div>
        <div class="content" id="move-display">
            <div class="input">
                <label for="machineTyp">设备类型:</label>
                <input type="text" name="machineTyp" id="typName"/>
            </div>
            <div class="submit">
                <button type="button" onclick="addTyp()" value="Enregistrer">确认添加</button>
            </div>
        </div>
        </form>
    </div>
</div>
<script>
    function deleteTyp(id) {
        $.post('/machine/typ/'+id+'/delete', function(r){
            if(r.code == 200){
                location.href = '/machine/typ/list';
            } else {
                alert('删除设备类型失败');
            }
        });
    }

    function addTyp() {
        if($('typName').val() == '') {
            alert('请输入类型名称');
            return false;
        }
        $.post("/machine/typ/add", {name: $('#typName').val()}, function(r){
            if(r.code == 200){
                location.href = '/machine/typ/list';
            } else {
                alert('添加设备类型失败.');
            }
        });
    }
</script>
</body>
</html>