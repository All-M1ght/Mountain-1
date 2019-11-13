package com.web.pojo.record;

import lombok.Getter;
import lombok.Setter;

import javax.xml.soap.Text;

@SuppressWarnings("JavaDoc")
@Getter
@Setter
public class MountainsRecord {
    private Long id;
    private String name;
    private Long altitude;
    private String url;
    private String info;
    private String img;
}
