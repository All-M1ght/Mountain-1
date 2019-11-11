package com.web.controller;


import com.web.pojo.record.MountainsRecord;
import com.web.pojo.record.net.res.GeneralRes;
import com.web.service.MountainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
@RequestMapping("web/mountains")


public class MountainsController {

    private MountainService mountainService;
    @Autowired
    public  MountainsController(
            MountainService mountainService
    ){
        this.mountainService = mountainService;
    }

    @RequestMapping(method = RequestMethod.GET, path = "list")
    public GeneralRes loadSome(){
        try{


        return GeneralRes.builder().data(mountainService.loadSome()).build();
    } catch (Throwable t) {

            return GeneralRes.builder()
                    .success(false)
                    .message(t.getMessage())
                    .build();
      }

}
}
