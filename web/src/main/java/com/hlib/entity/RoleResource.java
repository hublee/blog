package com.hlib.entity;

/**
 * Created by hlib on 2015/8/11 0011.
 */
public class RoleResource {

    private Integer roleId;

    private Integer resId;

    public RoleResource() {
    }

    public RoleResource(Integer roleId, Integer resId) {
        this.roleId = roleId;
        this.resId = resId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getResId() {
        return resId;
    }

    public void setResId(Integer resId) {
        this.resId = resId;
    }
}
