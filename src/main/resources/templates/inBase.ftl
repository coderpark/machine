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
        <form action="/machine/save" method="post">
        <div class="title">设备基本属性</div>
        <div class="content">
            <div class="input">
                <label for="inputName">设备名称:</label>
                <input class="form-control input-sm" id="inputName" name="name">
            </div>
            <div class="input">
                <label for="inputSerial">设备序列号:</label>
                <input class="form-control input-sm" id="inputSerial" name="serial">
            </div>
            <div class="input">
                <label for="inputNum">资产编号:</label>
                <input class="form-control input-sm" id="inputNum" name="assetCode">
            </div>
            <div class="input">
                <label for="inputUnit">单位:</label>
                <input class="form-control input-sm" id="inputUnit" name="unit">
            </div>
            <div class="input">
                <label for="inputTyp">厂牌型号:</label>
                <input class="form-control input-sm" id="inputTyp" name="factoryTyp">
            </div>
            <div class="input">
                <label for="inputNum">资产编号:</label>
                <input class="form-control input-sm" id="inputNum" name="assetCode">
            </div>
            <div class="input">
                <label for="inoutBuyDate">购买日期:</label>
                <input class="form-control input-sm datepicker" id="inoutBuyDate" name="buyDate">
            </div>
            <div class="input">
                <label for="inputFixDate">保修日期:</label>
                <input class="form-control input-sm datepicker" id="inputFixDate" type="text" name="fixDate">
            </div>
            <div class="input">
                <label for="inputAmount">数量:</label>
                <input type="number" class="form-control input-sm" id="inputAmount" name="amount">
            </div>
            <div class="input">
                <label for="inputPrice">价格:</label>
                <input type="number" class="form-control input-sm" id="inputPrice" name="price">
            </div>
            <div class="input">
                <label for="inputDeploy">设备配置:</label>
                <textarea class="form-control input-sm" id="inputDeploy" rows="1" name="deploy"></textarea>
            </div>
            <div class="input">
                <label for="inputNote">备注:</label>
                <textarea class="form-control input-sm" rows="7" cols="4" id="inputNote" name="note"></textarea>
            </div>
            <div class="input">
                <label for="file">上传设备相关图片:</label>
                <input type="file" id="file" name="pictures"/>
            </div>
            <div class="submit">
                <input type="submit" value="确认入库" formtarget="content"/>
                <input type="reset" value="重置" class="white"/>
            </div>
        </div>
        </form>
    </div>

    <div class="bloc">
        <div class="title">使用说明(选填)</div>
        <div class="content">
            <div class="input">
                <label for="input4">Datepicker using jQuery UI</label>
                <input type="text" class="datepicker" id="input4"/>
            </div>
            <div class="input textarea">
                <label for="textarea2">Autogrow WYSIWYG Textarea (<a href="https://github.com/akzhan/jwysiwyg">jwysiwyg</a>)</label>
            <textarea name="text" id="textarea2" rows="7" class="wysiwyg" cols="4">
                Here you <em>can have</em> some <strong>HTML Content</strong>
            </textarea>
            </div>
            <div class="input">
                <label>Range : $<span></span></label>
                <input type="text" class="range min-10 max-60" value="35" />
            </div>

            <div class="input">
                <label for="iphonecheck" class="label">Iphone checkbox</label>
                <input type="checkbox" id="iphonecheck" class="iphone"/>
            </div>


        </div>
    </div>

</div>
</body>
<script>
    function submitMachine(){
        if()
    }
</script>
</html>