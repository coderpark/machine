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
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">设备管理</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">入库管理 <span class="sr-only">(current)</span></a></li>
                <li><a href="#">Link</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">入库管理</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Link</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container">
    <div class="panel panel-info">
        <div class="panel-heading">
            入库信息
        </div>
        <div class="panel-body">
            <form class="form-inline">
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
                        <lable for="inputNote">备注</lable><textarea class="form-control input-sm" rows="1" id="inputNote"></textarea>
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