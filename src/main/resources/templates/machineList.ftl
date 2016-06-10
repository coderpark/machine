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
        设备列表
    </div>
    <div class="content">
        <table>
            <thead>
            <tr>
                <th><input type="checkbox" class="checkall"/></th>
                <th>设备名称</th>
                <th>设备序列号</th>
                <th>资产编号</th>
                <th>单位</th>
                <th>厂牌型号</th>
                <th>购买日期</th>
                <th>保修日期</th>
                <th>数量</th>
                <th>价格</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <#list pageInfo.list as machine>
            <tr>
                <td><input type="checkbox" /></td>
                <td><a href="#">${machine.name!}</a></td>
                <td>${machine.serial!}</td>
                <td>${machine.assetCode!}</td>
                <td>${machine.unit!}</td>
                <td>${machine.factoryTyp!}</td>
                <td>${(machine.buyDate?string("yyyy-MM-dd"))!}</td>
                <td>${(machine.fixDate?string("yyyy-MM-dd"))!}</td>
                <td>${machine.amount!}</td>
                <td>${machine.price!}</td>
                <td class="actions">
                    <a href="##" onclick="move(${machine.id})" title="调度"><img src="/static/img/icons/actions/edit.png" alt="" /></a>
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

    <div class="bloc">
        <div class="title">设备调度</div>
        <div class="content">
            <div class="input">
                <label for="machineName">调度设备:</label>
                <input type="text" id="machineName" />
            </div>
            <div class="input">
                <label for="roles">部门:</label>
                <select name="select" id="roles">
                </select>
                <label for="users">选择借用人:</label>
                <select name="select" id="users">
                    <option value="1">First value</option>
                    <option value="2">Second value</option>
                    <option value="3">Third value</option>
                </select>
            </div>
            <div class="input">
                <label for="backTime">归还时间:</label>
                <input type="text" class="datepicker" id="backTime"/>
            </div>
            <div class="input">
                <label class="label">是否归还:</label>
                <input type="checkbox" id="check1"/><label for="check1" class="inline">未归还</label> <br/>
            </div>

            <div class="input textarea">
                <label for="textarea1">借用描述:</label>
                <textarea name="text" id="textarea1" rows="7" cols="4"></textarea>
            </div>
            <div class="submit">
                <input type="submit" value="Enregistrer" />
                <input type="reset" value="Black button" class="black"/>
                <input type="reset" value="White button" class="white"/>
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
                        alert("success");
                        $.each(result.content, function(i, item){
                            $("#users").append("<option value='" + item.id + "'>" + item.name + "</option>")
                        });
                    }
                }
            });
        });
    });
</script>
</body>
</html>