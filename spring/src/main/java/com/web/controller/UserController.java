package com.web.controller;

import lombok.extern.slf4j.Slf4j;
import com.web.pojo.record.UserRecord;
import com.web.pojo.record.net.res.GeneralRes;
import com.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;

import org.springframework.web.bind.annotation.*;
@CrossOrigin
@RestController
@RequestMapping("web/user")
@Slf4j

public class UserController {

    private UserService userService;
    @Autowired
    public  UserController(
            UserService userService
    ){
        this.userService = userService;
    }

    @RequestMapping(method = RequestMethod.POST, path = "create")
    public GeneralRes createNew(
            @RequestBody UserRecord record
    ) {
        try {
            this.userService.createNew(record);
            return GeneralRes.builder().build();
        }
        catch (Throwable t) {
            log.error("createNew", t);
            return GeneralRes.builder()
                    .success(false)
                    .message(t.getMessage())
                    .build();
        }
    }



    @RequestMapping(method = RequestMethod.PUT)
    public GeneralRes edit(
            @RequestBody UserRecord record

    ) {
        try {
          boolean updated = this.userService.guess(record);

          return GeneralRes.builder().success(updated).build();
        } catch (Throwable t) {

            return GeneralRes.builder()
                    .success(false)
                    .message(t.getMessage())
                    .build();
        }

    }

    @RequestMapping(method = RequestMethod.PUT,path = "reject")
    public GeneralRes reject(
            @RequestBody UserRecord record

    ) {
        try {
            boolean reject = this.userService.reject(record);

            return GeneralRes.builder().success(reject).build();
        } catch (Throwable t) {

            return GeneralRes.builder()
                    .success(false)
                    .message(t.getMessage())
                    .build();
        }

    }

    @RequestMapping(method = RequestMethod.GET, path = "findme")
    public GeneralRes findMe(@RequestParam String ip){
        try{
            return GeneralRes.builder().data(userService.findMe(ip)).build();
        } catch (Throwable t) {
            return GeneralRes.builder()
                    .success(false)
                    .message(t.getMessage())
                    .build();
        }

    }
}
