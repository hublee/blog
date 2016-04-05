package com.hlib.entity;

import com.hlib.dto.ShiroUser;

/**
 * Created by hlib on 2016/2/23 0023.
 */
public class User extends BaseEntity{

    private String name;
    private String nickName;
    private String password;
    private String email;
    private Integer isEnable;

    public User() {
    }

    public User(ShiroUser shiroUser) {
        this.id = shiroUser.getId();
        this.name = shiroUser.getName();
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getIsEnable() {
        return isEnable;
    }

    public void setIsEnable(Integer isEnable) {
        this.isEnable = isEnable;
    }
}
