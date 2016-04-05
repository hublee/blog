<%@page contentType="text/html;charset=utf-8" language="java" %>
<%@include file="../../public/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>照片编辑</title>

    <script>
        var iconIds = [];
        var picIds = [];

        $(function(){
            initFileInput();
        })

        function initFileInput(){
            //图片
            $("#icon").fileinput({
                uploadUrl: "${ctx}/photoes/pictures/uploadFile", // server upload action
                uploadAsync: true,
                dropZoneEnabled:false,
                uploadExtraData:{type:'icon',sourceId:'${obj.id}'},
                overwriteInitial:false,
                initialPreview:${empty icon ? '[]':icon},
                initialPreviewConfig:${empty config_icon ? '[]' : config_icon},
                allowedFileTypes:['image'],
                maxFileCount:1,
                validateInitialCount:true
            }).on('fileuploaded', function(event, data, previewId, index) {
                var initConfigs = data.response.initialPreviewConfig;
                if(initConfigs){
                    console.log(JSON.stringify(initConfigs));
                    for(var i in initConfigs){
                        iconIds.push(initConfigs[i]['key']);
                        $("#iconUri").val(initConfigs[i]['url']);
                    }
                }
            }).on('filedeleted', function(event, key) {
                console.log('Key = ' + key);
                iconIds.pop(key);
            }).on('fileerror',function(event, data, previewId, index){
                console.log("错误信息: " + JSON.stringify(data));
            }).on('filepredelete', function(event, key) {
                console.log('Key = ' + key);
            });


            //图片
            $("#pic").fileinput({
                uploadUrl: "${ctx}/photoes/pictures/uploadFile", // server upload action
                uploadAsync: true,
                dropZoneEnabled:false,
                uploadExtraData:{type:'pic',sourceId:'${obj.id}'},
                overwriteInitial:false,
                initialPreview:${empty pic ? '[]':pic},
                initialPreviewConfig:${empty config_pic ? '[]' : config_pic},
                allowedFileTypes:['image'],
                maxFileCount:1,
                validateInitialCount:true
            }).on('fileuploaded', function(event, data, previewId, index) {
                var initConfigs = data.response.initialPreviewConfig;
                if(initConfigs){
                    for(var i in initConfigs){
                        picIds.push(initConfigs[i]['key']);
                        $("#picUri").val(initConfigs[i]['url']);
                    }
                }
            }).on('filedeleted', function(event, key) {
                console.log('Key = ' + key);
                picIds.pop(key);
            }).on('fileerror',function(event, data, previewId, index){
                console.log("错误信息: " + JSON.stringify(data));
            }).on('filepredelete', function(event, key) {
                console.log('Key = ' + key);
            });
        }

        function ajaxSubmit(e){
            $('#ff').data("bootstrapValidator").resetForm();
            $('#ff').data("bootstrapValidator").validate();
            if(!$('#ff').data("bootstrapValidator").isValid()) return;
            $("#attachIds").val(iconIds.concat(picIds));
            $(e).button('loading');
            $.ajax({
                type:'post',
                url:'${ctx}/photoes/pictures/saveOrUpdate',
                data:$('#ff').serializeArray(),
                dataType:'json',
                success:function(data){
                    if(data.status == "200"){
                        showInfo(data.msg);
                        location.href = document.referrer;
                    }else{
                        showErr("服务器内部错误，请联系管理员");
                        $(e).button('reset');
                    }
                },
                error:function(err){
                    showErr("操作失败！");
                    $(e).button('reset');
                }
            });
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
                <li class="active">
                    相册管理
                </li>
                <li class="">
                    <a class="fa" href="javascript:location.href=document.referrer">照片列表</a>
                </li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        ${empty obj or empty obj.id ? '添加照片' : '修改照片'}
                    </h3>
                </div>
                <div class="panel-body">
                    <form id="ff" class="form-horizontal" method="post"  role="form"
                          data-bv-message="This value is not valid"
                          data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                          data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                          data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
                        <input type="hidden" name="id" id="objId" value="${obj.id}">
                        <div class="form-group">
                            <label for="picName" class="col-sm-1 control-label">名称</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="picName" name="picName" data-bv-notempty="true" placeholder="名称" value="${obj.picName}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="title" class="col-sm-1 control-label">标题</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="title" name="title" data-bv-notempty="true" placeholder="标题" value="${obj.title}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="descr" class="col-sm-1 control-label">描述</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="descr" data-bv-notempty="true" name="descr" placeholder="照片描述" value="${obj.descr}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="icon" class="col-sm-1 control-label">缩略图</label>
                            <div class="col-sm-10">
                                <input class="file-loading" type="file" id="icon" style="margin-bottom:30px;"/>
                                <input type="hidden" name="icon" id="iconUri" value="${obj.icon}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="pic" class="col-sm-1 control-label">大图</label>
                            <div class="col-sm-10">
                                <input class="file-loading" type="file" id="pic" style="margin-bottom:30px;"/>
                                <input type="hidden" name="pic" id="picUri" value="${obj.pic}">
                            </div>
                        </div>
                        <input type="hidden" name="attachIds" id="attachIds">
                    </form>
                </div>
                <div class="panel-footer" style="text-align:center">
                        <div class="" style="">
                            <a  class="btn btn-primary" data-loading-text="正在提交中..."  onclick="ajaxSubmit(this)">保存</a>
                            <a  class="btn btn-default" onclick="javascript:location.href=document.referrer">返回</a>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <div id="htmlDlg"></div>
    </div>
</body>

</html>