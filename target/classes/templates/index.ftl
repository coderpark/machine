<!DOCTYPE html>
<html lang="en" ng-app>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>设备管理</title>
    <#--<link href="${request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet" media="screen">-->
    <#--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
    <#--<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">-->
    <link href="//cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="//cdn.bootcss.com/bootstrap-datepicker/1.5.1/css/bootstrap-datepicker3.min.css" rel="stylesheet" />
    <style>
        .panel{ position: relative;}
        .form-inline > .row{ margin-bottom: 15px;}
        .form-inline .form-control[rows="1"] {  width: 70%;  }
    </style>
</head>
<body>
<#include "/common/navbar.ftl">
<div class="container">
    <div class="panel panel-info">
        <div class="panel-heading">
            入库信息
        </div>
        <div class="panel-body">
            <form class="form-inline" action="/addMachine" method="post">
                <div class="row">
                    <div class="form-group col-sm-4">
                        <label for="inputName">设备名称:</label><input class="form-control input-sm" id="inputName">
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="inputSerial">序列号:</label><input class="form-control input-sm" id="inputSerial">
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="inputNum">资产编号:</label><input class="form-control input-sm" id="inputNum">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-4">
                        <label for="inputUnit">单位:</label><input class="form-control input-sm" id="inputUnit">
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="inputTyp">厂牌型号:</label><input class="form-control input-sm" id="inputTyp">
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="inputBuyDate">购买日期:</label><input class="form-control input-sm" id="inoutBuyDate" type="text" placeholder="购买日期">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-4">
                        <label for="inputFixDate">保修日期:</label><input class="form-control input-sm" id="inputFixDate" type="text" placeholder="保修日期">
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="inputAmount">数量:</label><input type="number" class="form-control input-sm" id="inputAmount">
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="inputPrice">价格:</label><input type="number" class="form-control input-sm" id="inputPrice">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-12">
                        <lable for="inputNote">备注:</lable><textarea class="form-control input-sm" rows="1" id="inputNote"></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-10">
                        <label for="inputDeploy">设备配置:</label><textarea class="form-control input-sm" id="inputDeploy" rows="1"></textarea>
                    </div>
                    <div class="form-group col-sm-2">
                        <button class="btn btn-primary">保存</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

 <script src="http://code.jquery.com/jquery.js"></script>
 <#--<script src="${request.contextPath}/static/js/bootstrap.min.js"></script>-->
<script src="//cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://code.angularjs.org/angular-1.0.1.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap-datepicker/1.5.1/js/bootstrap-datepicker.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap-datepicker/1.5.1/locales/bootstrap-datepicker.zh-CN.min.js"></script>
<script>
    $("#inoutBuyDate, #inputFixDate").datepicker({
        format: 'yyyy-mm-dd',
        weekStart: 1,
        autoclose: true,
        language: 'zh-CN',
        clearBtn: true
    }).on("changeDate", function (ev) {

    });
</script>
</body>
</html>