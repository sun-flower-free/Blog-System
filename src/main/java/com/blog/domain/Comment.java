package com.blog.domain;

import lombok.Getter;
import lombok.Setter;

import java.text.SimpleDateFormat;
import java.util.Date;

@Getter
@Setter
public class Comment {
    private Long id;

    private Long articleId;

    private Date date;

    private String name;

    private String email;

    private String content;

    public String getDate() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");//设置日期格式
        String dates = df.format(date);
        return dates;
    }

}