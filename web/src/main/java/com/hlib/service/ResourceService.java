package com.hlib.service;


import com.hlib.dto.ResourceTree;
import com.hlib.entity.Resource;

import java.util.List;

/**
 * Created by hlib on 2015/8/10 0010.
 */
public interface ResourceService extends BaseService<Resource>{

//    List<EasyuiTree> getEasyuiTree(Resource param);

    List<ResourceTree> loadResTree();
}
