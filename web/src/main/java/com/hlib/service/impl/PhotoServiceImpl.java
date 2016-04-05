package com.hlib.service.impl;

import com.hlib.entity.Attachment;
import com.hlib.entity.Photo;
import com.hlib.mapper.PhotoMapper;
import com.hlib.service.AttachmentService;
import com.hlib.service.PhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by hlib on 2016/2/24 0024.
 */
@Service
public class PhotoServiceImpl extends BaseServiceImpl<PhotoMapper,Photo> implements PhotoService {

    @Autowired
    public void setMapper(PhotoMapper mapper) {
        this.mapper = mapper;
        this.busName = "照片";
    }

    @Autowired
    private AttachmentService attachmentService;


    @Override
    @Transactional(readOnly = false)
    public Photo save(Photo photo, List<Integer> attachIds) throws Exception {
        boolean flag = false;
        if(null == photo.getId()) {
            flag = true;
        }
        Photo rtPhoto = super.save(photo);
        if(flag && null != attachIds && attachIds.size() > 0){ //新增的时候保存附件信息
            List<Attachment> attachmentList = attachmentService.getListByIds(attachIds);
            for(Attachment attachment : attachmentList){
                attachment.setSourceId(rtPhoto.getId());
                attachment.setSourceEntity(rtPhoto.getClass().getName());
                attachmentService.modify(attachment);
            }
        }
        return rtPhoto;
    }
}
