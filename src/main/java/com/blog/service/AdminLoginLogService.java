package com.blog.service;

import com.blog.transfer.AdminLoginLog;

import java.util.List;

public interface AdminLoginLogService {

    List<AdminLoginLog> selectRencent(Integer adminId);

    int insert(AdminLoginLog adminLoginLog);

    int selectCountByAdminId(int adminId);
}
