package com.hlib.service.impl;

import com.hlib.dto.ResourceTree;
import com.hlib.entity.Resource;
import com.hlib.mapper.ResourceMapper;
import com.hlib.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by hlib on 2015/8/10 0010.
 */
@Service("resourceService") @Transactional(readOnly = true)
public class ResourceServiceImpl extends BaseServiceImpl<ResourceMapper,Resource> implements ResourceService {

    @Autowired
    public void setMapper(ResourceMapper mapper) {
        this.mapper = mapper;
        this.busName = "资源菜单";
    }


    @Override
    public List<ResourceTree> loadResTree() {
        List<Resource> resourceList = getList(new Resource());
        List<ResourceTree> resTree = new ArrayList<>(); //系统目录菜单
        for(Resource res : resourceList){
            if(null != res.getPid() && res.getPid() == 0){
                resTree.add(new ResourceTree(res,new ArrayList<Resource>()));
            }
        }
        /**遍历父菜单找子菜单*/
        for(ResourceTree parent : resTree){
            for(Resource child : resourceList){
                if(child.getPid() == parent.getId()){
                    parent.getChildren().add(child);
                }
            }
        }
        return resTree;
    }
}
