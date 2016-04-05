package com.hlib.mapper;

import com.hlib.entity.Resource;
import com.hlib.entity.Role;
import com.hlib.entity.RoleResource;
import com.hlib.entity.UserRole;
import com.hlib.inface.CommonMapper;
import com.hlib.sql.ResourceSqlProvider;
import com.hlib.sql.RoleSqlProvider;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by hlib on 2015/8/11 0011.
 */
public interface RoleMapper extends CommonMapper<Role> {

    @Delete("delete from t_user_role where user_id = #{userId}")
    void emptyRoleByUserId(@Param("userId") Integer userId);

    @InsertProvider(type = RoleSqlProvider.class,method = "batchInsertRoleSql")
    void insertBatchRole(@Param("userRoles") List<UserRole> userRoles);

    @Delete("delete from t_role_resource where role_id = #{roleId}")
    void emptyResByRole(@Param("roleId") Integer roleId);

    @InsertProvider(type = RoleSqlProvider.class,method = "batchInsertResSql")
    void insertBatchRes(@Param("roleResources") List<RoleResource> roleResources);

    @Select("select r.* from t_role r inner join t_user_role u on(r.id=u.role_id) where u.user_id = #{userId}")
    List<Role> getRolesByUserId(Integer userId);

    @SelectProvider(type = ResourceSqlProvider.class,method = "getRoleResSql")
    List<Resource> getResourcesByRoleIds(@Param("roleIds") List<Integer> roleIds);
}
