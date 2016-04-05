package com.hlib.entity;

import javax.persistence.Table;

/**
 * Created by hlib on 2016/2/24 0024.
 */
@Table(name = "t_photo")
public class Photo extends BaseEntity {

    private String picName;
    private String title;
    private String icon;
    private String pic;
    private String descr;

    public String getPicName() {
        return picName;
    }

    public void setPicName(String picName) {
        this.picName = picName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }
}
