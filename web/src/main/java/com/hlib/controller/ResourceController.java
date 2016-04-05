package com.hlib.controller;
import com.hlib.dto.ResourceTree;
import com.hlib.dto.ShiroUser;
import com.hlib.dto.StatusDTO;
import com.hlib.entity.Resource;
import com.hlib.entity.User;
import com.hlib.service.ResourceService;
import com.hlib.service.RoleService;
import com.hlib.util.Page;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by hlib on 2015/8/4 0004.
 */
@Controller
@RequestMapping(value = "/common/res/")
public class ResourceController {

    private String DIR = "/admin/common/";
    private Logger log = Logger.getLogger(ResourceController.class);

    @Autowired
    private ResourceService resService;

    @Autowired
    private RoleService roleService;

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String showList(){
        return DIR+"resList";
    }


    /**
     * 分页查询
     * @param resource
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping(value = "listByPage",method = RequestMethod.POST) @ResponseBody
    public Page getListByPage(Resource resource,Integer page,Integer rows){
        return resService.getListByPage(resource,page,rows);
    }


    @RequestMapping(value = "saveOrUpdate",method = RequestMethod.POST) @ResponseBody
    public StatusDTO saveOrUpdate(Resource resource){
        try{
            resource.setDelFlag(1);
            resService.save(resource);
            return new StatusDTO(Boolean.TRUE);
        }catch (Exception e){
            log.error("保存资源菜单失败",e);
            e.printStackTrace();
            return new StatusDTO(Boolean.FALSE);
        }
    }

    @RequestMapping(value = "load",method = RequestMethod.POST) @ResponseBody
    public List<ResourceTree> load(){
        Subject subject = SecurityUtils.getSubject();
        ShiroUser shiroUser = (ShiroUser) subject.getPrincipal();
        List<ResourceTree> resourceTreeList = roleService.loadResourceTreeByUser(new User(shiroUser));
        return resourceTreeList;
    }

    @RequestMapping(value = "getById/{id}",method = RequestMethod.GET) @ResponseBody
    public Object getById(@PathVariable("id")Integer id){
        return resService.getById(id);
    }

    @RequestMapping(value = "getChilds/{pid}",method = RequestMethod.GET) @ResponseBody
    public Object getByPId(@PathVariable("pid")Integer pid){
        Resource res = new Resource();
        res.setPid(pid);
        return resService.getList(res);
    }

    @RequestMapping(value = "del/{id}",method = RequestMethod.GET) @ResponseBody
    public StatusDTO del(@PathVariable("id")Integer id){
        try{
            resService.removeById(id);
            return new StatusDTO(Boolean.TRUE);
        }catch (Exception e){
            e.printStackTrace();
            return new StatusDTO(Boolean.FALSE);
        }
    }
}
