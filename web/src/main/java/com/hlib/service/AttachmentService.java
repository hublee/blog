package com.hlib.service;



import com.hlib.dto.StatusDTO;
import com.hlib.entity.Attachment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by hlib on 2015/8/14 0014.
 */
public interface AttachmentService extends BaseService<Attachment> {

    /**
     *上传文件接口
     * @param request
     * @param dest 文件保存路径
     */
    Attachment upload(HttpServletRequest request, String dest) throws IOException;

    /**
     *app上传文件接口
     * @param request
     * @param dest 文件保存路径
     */
    List<Attachment> appUpload(HttpServletRequest request, String dest) throws IOException;

    List<Attachment> getListByIds(List<Integer> ids);

    List<Attachment> getBySourceIdAndEntityAndType(List<Integer> sourceIds, String entity, String type);

    /**
     * 下载文件接口
     * @param id
     * @param response
     */
    void downLoad(Integer id, HttpServletResponse response) throws IOException;

    /**
     * one entity > multi attach
     * @param sourceIds
     * @param entity
     * @return
     */
    Map<Integer,List<Attachment>> getAttachMap(List<Integer> sourceIds, String entity);

    /**
     *上传文件返回绝对路径
     * @param request
     * @param dest 文件保存路径
     */
    Map<String,String> getAbsolutePath(HttpServletRequest request, String dest) throws IOException;

    /**
     *上传文件接口,仅供控制器层调用的
     * @param request
     * @param dest 文件保存路径
     */
    StatusDTO upload(HttpServletRequest request, String dest, Class clazz);

}
