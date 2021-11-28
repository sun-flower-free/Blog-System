package com.blog.transfer;

import java.text.SimpleDateFormat;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AdminLoginLog {
    private Long id;

    private Integer adminId;

    private Date date;

    private String ip;

    public String getLocalTime() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy/M/dd HH:mm");//设置日期格式
        String dates = df.format(date);
        return dates;

    }
}