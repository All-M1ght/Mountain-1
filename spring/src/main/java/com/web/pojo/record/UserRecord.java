package com.web.pojo.record;
import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;
import java.util.Date;
@Getter
@Setter
public class UserRecord {
    private Long id;
    private Long age;
    private Long expert;
    private Long num;
    private Timestamp gmt;
    private String ip;
    private String tab;
}
