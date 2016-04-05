package com.hlib.inface;

import tk.mybatis.mapper.common.ExampleMapper;
import tk.mybatis.mapper.common.Marker;
import tk.mybatis.mapper.common.RowBoundsMapper;

/**
 * Created by hlib on 2016/2/24 0024.
 */
public interface CommonMapper<T> extends
        MyBaseMapper<T>,
        ExampleMapper<T>,
        RowBoundsMapper<T>,
        Marker {

    /*@Override
    @InsertProvider(
            type = SqlServerProvider.class,
            method = "dynamicSQL"
    )
    @Options(useGeneratedKeys = true)
    int insert(T t);

    @Override
    @InsertProvider(
            type = SqlServerProvider.class,
            method = "dynamicSQL"
    )
    @Options(useGeneratedKeys = true)
    int insertSelective(T t);*/

}
