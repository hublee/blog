<%@ page import="com.hlib.util.SpringContextUtils" %>
<%@ page import="com.hlib.dto.ResourceTree" %>
<%@ page import="com.hlib.service.ResourceService" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hlib.entity.Resource" %>
<%@ page language="java" pageEncoding="utf-8" %>
<%@include file="../../public/taglib.jsp"%>
<!-- BEGIN SIDEBAR -->
<div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav side-nav" style="padding-left:30px;">
        <li>
            <a href="/index"><i class="fa fa-fw  "></i>首页</a>
        </li>
        <%
            ResourceService resService = (ResourceService) SpringContextUtils.getBean("resourceService");
            List<ResourceTree> reses = resService.loadResTree();
            for(ResourceTree res : reses){
        %>
            <shiro:hasPermission name="<%=res.getCode()%>">
                <li>
                    <a href="javascript:;" style="letter-spacing:4px;" data-toggle="collapse" data-target="#<%=res.getCode()%>"><i class="glyphicon glyphicon-plus"></i><%=res.getName()%> <i class="fa fa-fw fa-caret-down"></i></a>
                    <ul id="<%=res.getCode()%>" class="collapse menu-parent" mid="<%=res.getId()%>">
                        <%
                            for(Resource child : res.getChildren()){
                        %>
                        <shiro:hasPermission name="<%=child.getCode()%>">
                            <li>
                                <a href="<%=child.getUri()%>" style="letter-spacing:6px;" class="menu-child" cid="<%=child.getId()%>" onclick="saveCurMenu(<%=child.getId()%>,<%=child.getPid()%>)"><%=child.getName()%></a>
                            </li>
                        </shiro:hasPermission>
                        <%
                            }
                        %>
                    </ul>
                </li>
            </shiro:hasPermission>
        <%
            }
        %>
    </ul>
</div>
<!-- END SIDEBAR -->