package com.hlib.service;

import com.hlib.entity.Photo;

import java.util.List;

/**
 * Created by hlib on 2016/2/24 0024.
 */
public interface PhotoService extends BaseService<Photo> {

    Photo save(Photo photo,List<Integer> attachIds) throws Exception;
}

