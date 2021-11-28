package com.blog.service.impl;

import com.blog.dao.AdminLoginMapper;
import com.blog.transfer.AdminLoginLog;
import com.blog.service.AdminLoginLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminLoginLogServiceImpl implements AdminLoginLogService{

    @Autowired
    public AdminLoginMapper adminLoginMapper;
    public List<AdminLoginLog> selectRencent(Integer adminId) {
        return adminLoginMapper.selectRencent(adminId);
    }

    public int insert(AdminLoginLog adminLoginLog) {
        return adminLoginMapper.insert(adminLoginLog);
    }

    public int selectCountByAdminId(int adminId) {
        return adminLoginMapper.selectCountByAdminId(adminId);
    }
}
