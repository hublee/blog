package com.hlib.rest.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * Created by hlib on 2015/8/20 0020.
 */
public class RestStatus<T> {

    private T data;
    private int success;
    private int error;
    private String msg;
    @JsonIgnore
    private Boolean status;

    private int count;

    public RestStatus() {
    }

    public RestStatus(Boolean status, MSG ms) {
        if(status) this.success = 1;
        else this.success = 0;
        this.msg = ms.toString();
        this.error = ms.code;
    }

    public RestStatus(T data, Boolean status) {
        if(status) this.success = 1;
        else this.success = 0;
        this.data = data;
    }

    public RestStatus(T data, Boolean status, String msg) {
        if(status) this.success = 1;
        else this.success = 0;
        this.data = data;
        this.msg = msg;
    }

    public RestStatus(String msg, Boolean status) {
        if(status) this.success = 1;
        else this.success = 0;
        this.msg = msg;
        this.status = status;
    }

    public RestStatus(Boolean ok) {
        if(ok) {
            this.msg = MSG.OK.toString();
            this.success = 1;
        }
        else this.success = 0;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public int getSuccess() {
        return success;
    }

    public void setSuccess(int success) {
        this.success = success;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getError() {
        return error;
    }

    public void setError(int error) {
        this.error = error;
    }
}
