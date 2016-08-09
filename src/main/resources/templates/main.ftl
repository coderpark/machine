<!DOCTYPE html>
<html>
<head>
    <title>设备管理系统</title>
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


<div class="settings" id="settings">
    <div class="wrapper">
        <div class="grid3">
            <div class="titre">Backgrounds</div>
            <a href="url(/static/css/img/bg.html" class="backgroundChanger active" title="White"></a>
            <a href="url(/static/css/img/dark-bg.html" class="backgroundChanger dark" title="Dark"></a>
            <a href="url(/static/css/img/wood.html" class="backgroundChanger dark" title="Wood"></a>
            <a href="url(/static/css/img/altbg/smoothwall.html" class="backgroundChanger" title="Smoothwall"></a>
            <a href="url(/static/css/img/altbg/black_denim.html" class="backgroundChanger dark" title="black_denim"></a>
            <a href="url(/static/css/img/altbg/carbon.html" class="backgroundChanger dark" title="Carbon"></a>
            <a href="url(/static/css/img/altbg/double_lined.html" class="backgroundChanger" title="Double lined"></a>
            <div class="clear"></div>
        </div>
        <div class="grid3">
            <div class="titre">Bloc style</div>
            <a href="black.html" class="blocChanger" title="Black" style="background:url(css/img/bloctitle.png);"></a>
            <a href="white.html" class="blocChanger active" title="White" style="background:url(css/img/white-title.png);"></a>
            <a href="wood.html" class="blocChanger" title="Wood" style="background:url(css/img/wood-title.jpg);"></a>
            <div class="clear"></div>
        </div>
        <div class="grid3">
            <div class="titre">Sidebar style</div>
            <a href="grey.html" class="sidebarChanger active" title="Grey" style="background:#494949"></a>
            <a href="black.html" class="sidebarChanger" title="Black" style="background:#262626"></a>
            <a href="white.html" class="sidebarChanger" title="White" style="background:#EEEEEE"></a>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
    <a class="settingbutton" href="#">

    </a>
</div>
<!--
        HEAD
                -->
<div id="head">
    <div class="left">
        <a href="#" class="button profile"><img src="/static/img/icons/top/huser.png" alt="" /></a>
        Hi,
        <a href="#">John Doe</a>
        |
        <a href="#">Logout</a>
    </div>
    <div class="right">
        <form action="#" id="search" class="search placeholder">
            <label>Looking for something ?</label>
            <input type="text" value="" name="q" class="text"/>
            <input type="submit" value="rechercher" class="submit"/>
        </form>
    </div>
</div>


<!--
        SIDEBAR
                 -->
<div id="sidebar">
    <ul>
        <li>
            <a href="index.html">
                <img src="/static/img/icons/menu/inbox.png" alt="" />
                系统首页
            </a>
        </li>
        <li class="current"><a href="#"><img src="/static/img/icons/menu/layout.png" alt="" /> 设备管理</a>
            <ul>
                <li class="current"><a href="dashboard.html?p=index">Dashboard</a></li>
                <li><a href="/machine/page/add" target="content">入库管理</a></li>
                <li><a href="/machine/list" target="content">设备列表</a></li>
                <li><a href="/move/list" target="content">变更记录</a></li>
                <li><a href="gallery.html?p=gallery">Gallery</a></li>
                <li><a href="notifications.html?p=notif">Notifications</a></li>
                <li><a href="charts.html?p=charts">Charts</a></li>
                <li><a href="typography.html?p=typo">Typography</a></li>
                <li><a href="icons.html?p=icons">Icons</a></li>
                <li><a href="calendar.html?p=calendar">Calendar</a></li>
            </ul>
        </li>
        <li><a href="#"><img src="/static/img/icons/menu/brush.png" alt="" /> 用户管理</a>
            <ul>
                <li><a href="/user/all" target="content">用户列表</a></li>
                <li><a href="#">权限管理</a></li>
            </ul>
        </li>
        <li><a href="#"><img src="/static/img/icons/menu/brush.png" alt="" />部门管理</a>
            <ul>
                <li><a href="#">Fake menu #1</a></li>
                <li><a href="#">Fake menu #2</a></li>
                <li><a href="#">Fake menu #3</a>
                    <ul>
                        <li><a href="#">Fake menu #1</a></li>
                        <li><a href="#">Fake menu #2</a></li>
                        <li><a href="#">Fake menu #3</a>
                            <ul>
                                <li><a href="#">Fake menu #1</a></li>
                                <li><a href="#">Fake menu #2</a></li>
                                <li><a href="#">Fake menu #3</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li class="nosubmenu"><a href="#"><img src="/static/img/icons/menu/lab.png" alt="" /> This button is useless</a></li>
        <li class="nosubmenu"><a href="modal.html" class="zoombox w450 h700"><img src="/static/img/icons/menu/comment.png" alt="" />我的待办</a></li>
    </ul>


</div>




<!--
      CONTENT
                -->
<iframe name="content" style="margin-left: 5%;" width="95%" height="600px" class="panel white" src="http://www.baidu.com" scrolling="auto" frameborder="0" marginwidth="0">

</iframe>


</body>
</html>