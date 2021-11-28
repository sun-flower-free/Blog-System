package com.blog.display;

import lombok.Getter;
import lombok.Setter;

import java.text.SimpleDateFormat;
import java.util.Date;

@Getter
@Setter
public class Article {
    private Integer id;

    private String title;

    private String keywords;

    private String desci;

    private String pic;

    private Integer click;

    private Date time;

    private Integer catalogId;

    private String content;

    public String getLocalTime() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-M-dd HH:mm");//设置日期格式
        String date = df.format(time);
        return date;

    }

}