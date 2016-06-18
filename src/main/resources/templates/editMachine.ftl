<!DOCTYPE html>
<html>
<head>
    <title>入库管理</title>
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
    <h1><img src="/static/img/icons/posts.png" alt="" /> 设备入库</h1>

    <div class="bloc">
        <form action="/machine/save" method="post" id="machineForm">
            <input type="hidden" name="id" value="${(machine.id)!0}">
        <div class="title">设备基本属性</div>
        <div class="content">
            <div class="input">
                <label for="inputName">*设备名称:</label>
                <input class="form-control input-sm required" id="inputName" name="name" value="${(machine.name)!""}">
            </div>
            <div class="input">
                <label for="inputSerial">设备序列号:</label>
                <input class="form-control input-sm" id="inputSerial" name="serial" value="${(machine.serial)!""}">
            </div>
            <div class="input">
                <label for="inputNum">资产编号:</label>
                <input class="form-control input-sm" id="inputNum" name="assetCode" value="${(machine.assetCode)!""}">
            </div>
            <div class="input">
                <label for="inputUnit">*单位:</label>
                <input class="form-control input-sm required" id="inputUnit" name="unit" value="${(machine.unit)!""}">
            </div>
            <div class="input">
                <label for="inputTyp">厂牌型号:</label>
                <input class="form-control input-sm" id="inputTyp" name="factoryTyp" value="${(machine.factoryTyp)!""}">
            </div>
            <div class="input">
                <label for="inoutBuyDate">*购买日期:</label>
                <input class="form-control input-sm datepicker required" id="inoutBuyDate" name="buyDate" value="${(machine.buyDate?string("yyyy-MM-dd"))!""}">
            </div>
            <div class="input">
                <label for="inputFixDate">*保修日期:</label>
                <input class="form-control input-sm datepicker required" id="inputFixDate" type="text" name="fixDate" value="${(machine.fixDate?string("yyyy-MM-dd"))!""}">
            </div>
            <div class="input">
                <label for="inputAmount">*数量:</label>
                <input type="text" class="form-control input-sm required" id="inputAmount" name="amount" value="${(machine.amount)!""}">
            </div>
            <div class="input">
                <label for="inputPrice">*价格:</label>
                <input type="text" class="form-control input-sm required" id="inputPrice" name="price" value="${(machine.price)!""}">
            </div>
            <div class="input">
                <label for="inputDeploy">设备配置:</label>
                <textarea class="form-control input-sm" id="inputDeploy" rows="1" name="deploy">${(machine.deploy)!""}</textarea>
            </div>
            <div class="input">
                <label for="inputNote">备注:</label>
                <textarea class="form-control input-sm" rows="7" cols="4" id="inputNote" name="note">${(machine.note)!""}</textarea>
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