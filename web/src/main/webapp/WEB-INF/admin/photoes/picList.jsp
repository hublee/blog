<%@page contentType="text/html;charset=utf-8" language="java" %>
<%@include file="../../public/taglib.jsp"%>
<html>
<head>
    <meta charset="utf-8">
    <title>照片管理</title>

    <script type="text/javascript">
        $(function(){
            $('#dataTable').bootstrapTable({
                method:'post',
                url:'${ctx}/photoes/pictures/list',
                contentType:'application/x-www-form-urlencoded',
                sidePagination:'server',
                columns:[[
//                    {field:'id',checkbox:true,title:'',width:'5%'},
                    {field:'picName',title:'照片名称',width:'15%'},
                    {field:'title',title:'标题',width:'20%'},
                    {field:'icon',title:'缩略图',width:'15%'},
                    {field:'pic',title:'大图',width:'15%'},
                    {field:'descr',title:'照片描述',width:'15%'},
                    {field:'createTime',title:'上传时间',width:'5%',formatter:function(value,row,index){
                        return new Date(value).format("yyyy-MM-dd");
                    }},
                    {field:'_operate',title:'操作',width:'15%',formatter:function(value,row,index){
                        var htm = "<a class='btn btn-default btn-sm' href='${ctx}/photoes/pictures/edit?id="+row.id+"'><span class='glyphicon glyphicon-edit'></span>编辑</a>";
                        htm += "&nbsp;&nbsp;<a class='btn btn-danger btn-sm' href='javascript:delGame("+row.id+");'><span class='glyphicon glyphicon-remove'></span>删除</a>";
                        return htm;
                    }}
                ]],
                singleSelect:true,
                pagination:true,
                pageSize:10,
                queryParamsType:'ps',
                queryParams:function(params){
                    params.page = params.pageNumber;
                    params.rows = params.pageSize;
                    params.title = $("#title").val();
                    return params;
                },
                showPaginationSwitch:true,
                showColumns:true,
                showRefresh:true,
                showToggle:true,
                toolbar:$("#toolbar"),
                onLoadError:function(){
                    showErr("加载失败");
                }
            });

            $('#pushTimePicker').datetimepicker({
                language:'zh-CN'
            });
        })


        function delGame(id){
            showConfirm("确认提示","确认要删除吗？",function(){
                $.ajax({
                    type:'post',
                    url:'${ctx}/editor/gameEvaluate/del/'+id,
                    dataType:'json',
                    success:function(data){
                        showInfo(data.msg);
                        reloadGrid();
                    },
                    error:function(err){
                        showErr("服务器内部错误，请联系管理员");
                    }
                });
            });
        }


        function reloadGrid(){
            $('#dataTable').bootstrapTable("refresh",{
                title:$("#title").val(),
                gameId:$("#game").val(),
                type:$("#type").val(),
                isOnline:$("#isOnline").val()
            });
        }

        function resetQueryForm(){
            $("#title").val("");
            $("#game").val("");
            $("#type").val("");
            $("#isOnline").val("1");
            reloadGrid();
        }



        //加载图片失败 设置默认图片
        function noFind(e){
            $(e).attr("src","/images/default.jpg");
            $(e).attr("onerror",null);
        }
    </script>
</head>
<body>
    <div class="">
    <div class="row">
        <div class="col-lg-12">
            <ol class="breadcrumb">
                <li class="">
                    <i class="fa"></i>编辑管理
                </li>
            </ol>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        评测列表
                    </h3>
                </div>
                <div class="panel-body">
                    <div id="toolbar">
                        <a href="${ctx}/photoes/pictures/edit" class="btn btn-success" style="margin-right:160px;"><span class="glyphicon glyphicon-plus"></span>添加</a>
                        <form class="form-inline" role="form" id="searchForm" style="float:right;">
                            <div class="form-group">
                                <label for="title">标题</label>
                                <input type="text" class="form-control" id="title" placeholder="请输入标题" onchange="reloadGrid();">
                            </div>
                            <button type="button" class="btn btn-default" onclick="javascript:reloadGrid();">搜索</button>
                            <button type="button" class="btn btn-default" onclick="javascript:resetQueryForm();">重置</button>
                        </form>
                    </div>
                    <table id="dataTable"></table>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>

</html>