package com.blog.service.impl;

import com.blog.dao.AdminMapper;
import com.blog.transfer.Admin;
import com.blog.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{
    @Autowired
    public AdminMapper adminMapper;

    public Admin getByAccount(String account) {
        System.out.println(account);
        return adminMapper.selectByPrimaryKey(account);
    }
}
