package com.hlib.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hlib.dto.PreviewConfig;
import com.hlib.dto.StatusDTO;
import com.hlib.entity.Attachment;
import com.hlib.entity.Photo;
import com.hlib.service.AttachmentService;
import com.hlib.service.PhotoService;
import com.hlib.util.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by hlib on 2016/2/24 0024.
 */
@Controller
@RequestMapping(value = "/photoes/pictures/")
public class PhotoController  {

    private String dir = "/photoes/";

    private static final String ATTACH_DIR = "/admin/photoes/pictures/";

    @Autowired
    private PhotoService photoService;

    @Autowired
    private AttachmentService attachmentService;

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String showList(){
        return dir + "picList";
    }

    @RequestMapping(value = "list",method =  RequestMethod.POST)
    public @ResponseBody Object list(Photo photo,Integer page,Integer rows){
        return photoService.getListByPage(photo,page,rows);
    }

    @RequestMapping(value = "edit",method = RequestMethod.GET)
    public String edit(@RequestParam(value = "id",required = false)Integer id,Model model) throws Exception{
        if(null != id){
            model.addAttribute("obj", photoService.getById(id));

            ObjectMapper om = new ObjectMapper();
            List<Integer> sourceIds = new ArrayList<>();
            sourceIds.add(id);
            List<Attachment> attachments = attachmentService.getBySourceIdAndEntityAndType(sourceIds,Photo.class.getName(),null);
            List<String> icon = null;
            List<String> pic = null;

            List<PreviewConfig> config_icon = null;
            List<PreviewConfig> config_pic = null;

            PreviewConfig pconfig;
            String preview;
            for(Attachment attach : attachments){
                preview = "<img src='"+ Constants.UPLOAD_URI + attach.getUri()+"' onerror='noFind(this);' class='file-preview-image' alt='"+attach.getName()+"' title='"+attach.getName()+"'>";
                pconfig = new PreviewConfig();
                pconfig.setUrl("/common/attach/del/"+attach.getId());
                pconfig.setCaption(attach.getName());
                pconfig.setKey(attach.getId().toString());

                switch (attach.getSourceType()){
                    case "icon":
                        if(null == icon) icon = new ArrayList<>();
                        icon.add(preview);
                        //configs
                        if(null == config_icon) config_icon = new ArrayList<>();
                        config_icon.add(pconfig);
                        break;
                    case "pic":
                        if(null == pic) pic = new ArrayList<>();
                        pic.add(preview);
                        //configs
                        if(null == config_pic) config_pic = new ArrayList<>();
                        config_pic.add(pconfig);
                        break;
                }
            }
            model.addAttribute("icon", om.writeValueAsString(icon == null ? new ArrayList<>() : icon));
            model.addAttribute("pic", om.writeValueAsString(pic == null ? new ArrayList<>() : pic));

            model.addAttribute("config_icon",om.writeValueAsString(config_icon == null ? new ArrayList<>() : config_icon));
            model.addAttribute("config_pic",om.writeValueAsString(config_pic == null ? new ArrayList<>() : config_pic));
        }



        return dir + "picEdit";
    }

    @RequestMapping(value = "uploadFile",method = RequestMethod.POST) @ResponseBody
    public StatusDTO uploadFile(HttpServletRequest request) throws IOException {
        return attachmentService.upload(request,ATTACH_DIR,Photo.class);
    }

    @RequestMapping(value = "saveOrUpdate",method = RequestMethod.POST)
    public @ResponseBody StatusDTO saveOrUpdate(Photo photo,Integer[] attachIds){
        try{
            photoService.save(photo, Arrays.asList(attachIds));
            return new StatusDTO(Boolean.TRUE);
        }catch (Exception e){
            e.printStackTrace();
            return new StatusDTO(Boolean.FALSE);
        }
    }

}
