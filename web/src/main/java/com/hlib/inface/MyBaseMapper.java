package com.hlib.inface;

import tk.mybatis.mapper.common.SqlServerMapper;
import tk.mybatis.mapper.common.base.BaseDeleteMapper;
import tk.mybatis.mapper.common.base.BaseSelectMapper;
import tk.mybatis.mapper.common.base.BaseUpdateMapper;

/**
 * Created by hlib on 2016/3/15 0015.
 */
public interface MyBaseMapper<T> extends
        BaseSelectMapper<T>,
        SqlServerMapper<T>,
        BaseUpdateMapper<T>,
        BaseDeleteMapper<T> {
}
