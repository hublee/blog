package com.hlib.rest.controller;

import com.hlib.entity.Photo;
import com.hlib.rest.dto.RestStatus;
import com.hlib.service.PhotoService;
import com.hlib.util.Constants;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by hlib on 2016/2/25 0025.
 */
@RestController
@RequestMapping(value = "/app/photo/")
public class PhotoRestController {

    @Autowired
    private PhotoService photoService;

    @RequestMapping(value = "list",method = RequestMethod.POST)
    public Object listPictures(){
        try{
            List<Photo> photos = photoService.getList(new Photo());
            for(Photo photo : photos){
                if(StringUtils.isNotBlank(photo.getIcon())){
                    photo.setIcon(Constants.UPLOAD_URI + photo.getIcon());
                }
                if(StringUtils.isNotBlank(photo.getPic())){
                    photo.setPic(Constants.UPLOAD_URI + photo.getPic());
                }
            }
            return new RestStatus<>(photos,Boolean.TRUE);
        }catch (Exception e){
            e.printStackTrace();
            return new RestStatus<>(Boolean.FALSE);
        }
    }

}
