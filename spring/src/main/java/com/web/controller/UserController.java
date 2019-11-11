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
}
