$(document).ready(function(){
    $('#menu').accordion({

    })
    $('#dg').datagrid({
        url:'../User/user',
        columns:[[
            {field:'id',title:'ID',width:50},
            {field:'name',title:'用户名',width:100},
            {field:'nickname',title:'昵称',width:100},
            {field:'status',title:'状态',width:100},
            {field:'remark',title:'备注',width:100},
            {field:'create_time',title:'创建时间',width:200},
            {field:'update_time',title:'修改时间',width:200},
        ]],
        fitColumns:true,
        loadMsg:'数据读取中，请稍候',
        pagination:true,//分页
        rownumbers:true,//显示行号
        singleSelect:true,//是否单选
        checkOnSelect:true,
        pageSize:5,
        pageNumber:1,
        pageList:[5,10,15,20],
    })
})