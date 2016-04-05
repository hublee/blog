package com.hlib.service;


import com.hlib.dto.ShiroUser;
import com.hlib.entity.Resource;
import com.hlib.entity.Role;
import com.hlib.entity.User;
import com.hlib.mapper.RoleMapper;
import com.hlib.mapper.UserMapper;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ShiroDbRealm extends AuthorizingRealm{

  @Autowired
  private UserMapper userMapper;

  @Autowired
  private RoleMapper roleMapper;

  protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
    ShiroUser shiroUser = (ShiroUser) principals.getPrimaryPrincipal();
    SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
    List<Role> roleList = roleMapper.getRolesByUserId(shiroUser.getId());
    if(null != roleList && roleList.size() > 0) {
      List<Integer> roleIds;
      for (Role role : roleList) {
        //基于role的权限信息
        info.addRole(role.getCode());
        //基于permissions的权限信息
        roleIds = new ArrayList<>();
        roleIds.add(role.getId());
        List<Resource> resources = roleMapper.getResourcesByRoleIds(roleIds);
        Set<String> roleCodes = new HashSet<>();
        if(null != resources){
          for(Resource rs : resources) roleCodes.add(rs.getCode());
        }
        info.addStringPermissions(roleCodes);
      }
    }
    return info;
  }

  /**
   *  认证回调函数,登录时调用.
   */
  protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {
    UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
    if(StringUtils.isBlank(token.getUsername()) || null == token.getPassword() || token.getPassword().length <= 0){
      throw new CredentialsException();
    }
    User user = userMapper.selectByName(token.getUsername());

    if (null != user) {
//      if(user.getIsEnable() == 0) throw new DisabledAccountException();
      return new SimpleAuthenticationInfo(new ShiroUser(user.getId(),user.getName()),user.getPassword(),getName());
    } else {
      throw new UnknownAccountException();
    }
  }

  @PostConstruct
  public void initCredentialsMatcher(){
    setCredentialsMatcher(new CustomCredentialsMatcher());
  }

}