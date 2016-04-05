package com.hlib.util;



/**
 * Created by hlib on 2015/8/20 0020.
 */
public class Constants {

    public static final String UPLOAD_URI = "/attaches";
//    public static final String UPLOAD_URI = "D:\\program\\apache-tomcat-7.0.55\\webapps\\top9_server\\attaches";

    public static final String DEFAULT_USER_ICON = "/app/user/icon/default_head.jpg"; //用户默认头像
    public static final String DEFAULT_USER_THEME = "/app/user/icon/default_theme.jpg"; //用户默认头像

    public static final Integer DAY_MAX_INTEGRAL = 10; //每日积分上限

    public static final String SEARCH_INDEX_DIR = "D:\\lucene_index\\3"; //全文搜索索引目录

    public static final String AESKEY = "num1zeus123456";

    public static final String INNER_JF_KEY = "0ef818eefcd00d17625c3b585716168b";

    public static final int MIN_LEVEL_EXPERIENCE = 30; //最低等级的最小经验值

    public static final long VERIFYCODE_EXPIRED_TIME = 30*60*1000; //验证码过期时间 5分钟
    public static final long TOKEN_EXPIRED_TIME = 24*60*60*1000; //TOKEN过期时间  一天

    //亲加通讯配置参数
    private static final String GOTYE_APPKEY = "587ac548-6e6b-443b-8629-90cb903f1382";
    private static final String GOTYE_DEV_ACCOUNT = "niulei@zeustel.com";
    private static final String GOTYE_DEV_PWD = "wawjy6d5";
    public static final String GOTYE_URL = "https://voichannel.aichat.com.cn:8443/respApi/room?type=1&appKey="+GOTYE_APPKEY+"&devAccount="+GOTYE_DEV_ACCOUNT+"&devPwd="+GOTYE_DEV_PWD;


    public static final String DB_MYSQL = "mysqlDataSource";
    public static final String DB_SQLSERVER = "sqlServerDataSource";

    //阿里云OSS配置参数
    public static final String OSS_ACCESSKEYID = "IITqO2QYisx7JdCQ";
    public static final String OSS_ACCESSKEYSECRET = "bk8aa1yWsmcwBr8j0uv9SW0U1NTOKy";
    public static final String OSS_ENDPOINT = "oss-cn-hangzhou.aliyuncs.com";
    public static final String OSS_BUCKETNAME = "top9-attaches";

    //版本更新接口
    public static final String VERSION_CHECK_URL = "http://115.29.5.34/app/tech/version/getLatest";

    //信鸽推送到TOP9配置
    public static final Long  XINGE_TOP9_ACCESS_ID = 2100043637L;
    public static final String XINGE_TOP9_ACCESS_KEY = "AXRY26X648GQ";
    public static final String XINGE_TOP9_SECRET_KEY = "dcbcaa395af789872dfe6f50ff6ab0fe";

    //信鸽推送到电台配置
    public static final Long  XINGE_FM_ACCESS_ID = 2100179636L;
    public static final String XINGE_FM_ACCESS_KEY = "KEYA58YUWWH181I";
    public static final String XINGE_FM_SECRET_KEY = "44f75bdf8c6ae1c26632ed3f61bde658";
}
