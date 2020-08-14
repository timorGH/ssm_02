<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/12 0012
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>用户信息</title>
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
</head>
<body>






    <table id="demo" lay-filter="test"></table>

    <script src="/layui/layui.js"></script>
    <script>
        layui.use('table', function(){
            var table = layui.table;

            //第一个实例
            table.render({
                elem: '#demo'
                ,height: 312
                ,url: '/user/findAll' //数据接口
                ,page: false //开启分页
                ,cols: [[ //表头
                    {field: 'id', title: 'ID', width:80, sort: true, fixed: 'left'}
                    ,{field: 'username', title: '姓名', width:80}
                    ,{field: 'birthday', title: '生日', width:80, sort: true}
                    ,{field: 'sex', title: '性别', width:80}
                    ,{field: 'address', title: '地址', width: 177}
                ]]
            });

        });
    </script>
</body>
</html>
