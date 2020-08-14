<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %><html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>首页</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
</head>
<body>


<ul class="layui-nav">
    <li class="layui-nav-item">
        <a href="">控制台<span class="layui-badge">9</span></a>
    </li>
    <li class="layui-nav-item">
        <a href="/success.jsp">用户管理中心<span class="layui-badge-dot"></span></a>
    </li>
    <li class="layui-nav-item">
        <a href=""><img src="/images/01.jpg" class="layui-nav-img">我</a>
        <dl class="layui-nav-child">
            <dd><a href="">所有用户信息</a></dd>
            <dd><a href="javascript:;">安全管理</a></dd>
            <dd><a href="javascript:;">退了</a></dd>
        </dl>
    </li>
</ul>

</body>
<script src="/layui/layui.js"></script>
<script>
    //一般直接写在一个js文件中
    layui.use(['layer', 'form'], function(){
        var layer = layui.layer
            ,form = layui.form
            ,$ = layui.jquery;
    });
</script>
</html>
