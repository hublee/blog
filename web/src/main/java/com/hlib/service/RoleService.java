package com.hlib.service;


import com.hlib.dto.ResourceTree;
import com.hlib.entity.Resource;
import com.hlib.entity.Role;
import com.hlib.entity.User;
import com.hlib.entity.UserRole;

import java.util.List;
import java.util.Set;

/**
 * Created by hlib on 2015/8/11 0011.
 */
public interface RoleService extends BaseService<Role> {

    void batchInsertRole(Set<Integer> roleId, Integer userId);

    void batchInsertRes(Set<Integer> resIds, Integer roleId);

//    List<EasyuiTree> getResourceTreeByRoleId(Integer roleId);

    List<Resource> getResourcesByRoleId(Integer roleId);

    List<Role> getRoleByUserId(Integer userId);

    List<Resource> getResourcesByRoleIds(List<Integer> roleIds);

    List<ResourceTree> loadResourceTreeByUser(User user);

    void insertBatchRole(List<UserRole> userRoleList);

    Set<String> getResCode(Integer roleId);

//    Set<String> getRoleCodeByIds(List<Integer> roleIds);

//    boolean updateFMRoles(Integer userId, Integer roles);

//    List<Integer> getUserIdsByRoleId(Integer roleId);

//    boolean removeUserRole(UserRole userRole);

}
