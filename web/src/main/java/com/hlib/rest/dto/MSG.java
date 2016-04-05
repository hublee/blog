package com.hlib.rest.dto;

/**
 * Created by hlib on 2015/9/22 0022.
 */
public enum MSG {
    OK("操作成功"),
    SERVER_ERR("服务器内部错误",-1),
    NAME_PWD_ERR("用户名或密码错误",10002),
    ILLEGAL_PARAM("非法参数",10003),
    TOKEN_EXPIRED("token过期，请重新登录",10004),
    PARAM_REQUIRED("参数不能为空",10005),
    ACCOUNT_REGISTERED("该账号已被注册",10006),
    VALID_FAILED("校验失败",10008),
    OLD_PWD_ERR("原始密码错误",10009),
    FILE_NOT_FOUND("文件不存在",10015),
    ALREADY_THUMBUP("您已点赞过，不能重复点赞",10017),
    ALREADY_CARE("您已关注过该用户",10020),
    SERVER_BUSY("服务器繁忙，请稍后再试",10021),
    NICKNAME_USED("昵称已被使用",10022),
    GET_VERIFYCODE_FAILED("获取验证码失败，请重试",10023),
    VERIFYCODE_EXPIRED("验证码已过期，请重新获取",10024),
    VERIFYCODE_ERROR("验证码错误",10025),
    ACCOUNT_NOT_FOUND("账号不存在",10026),
    ORDER_NOTPAY("订单未支付",10028),


    //openapi
    MOBILE_NOT_BIND("用户未绑定该手机号",20001),
    BALANCE_NOT_ENOUGH("账户余额不足",20002),
    INVALID_SIGN("签名校验失败",20003)

    ;

    MSG(String descr){
        this.descr = descr;
    }

    MSG(String descr, int code) {
        this.descr = descr;
        this.code = code;
    }
    @Override
    public String toString() {
        return descr;
    }

    private String descr;

    public int code;

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }
}
