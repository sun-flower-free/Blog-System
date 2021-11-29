package com.blog.controller;

import com.blog.transfer.Admin;
import com.blog.transfer.AdminLoginLog;
import com.blog.service.impl.AdminLoginLogServiceImpl;
import com.blog.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalTime;
import java.util.Date;
import java.util.HashMap;


@Controller
public class LoginController {
    @Autowired
    AdminServiceImpl adminService;
    @Autowired
    AdminLoginLogServiceImpl adminLoginLogService;
    @RequestMapping(value = {"/admin/index","/admin","/admin/login"})
    public String toIndex(HttpServletRequest request) {

        return "admin/login";


    }

    // 0:用户不存在  1:密码错误 2:登陆成功
    @RequestMapping(value = "/api/loginCheck", method = RequestMethod.POST)
    @ResponseBody
    public Object loginCheck(HttpServletRequest request,HttpServletResponse httpServletResponse) {
        String account = request.getParameter("account");
        String passwd = request.getParameter("password");
        HashMap<String, String> res = new HashMap<>();
        Admin obj = adminService.getByAccount(account);
        if(obj == null){
            res.put("stateCode", "0");
            System.out.println(LocalTime.now()+" [\33[35;2m登录检测(博客管理系统)\33[m] login account: " + account + " password: " + passwd + "  No User");
        }
        else if(!obj.getPassword().equals(passwd)){
            res.put("stateCode", "1");
            System.out.println(LocalTime.now()+" [\33[35;2m登录检测(博客管理系统)\33[m] login account: " + account + " password: " + passwd + "  Wrong Password");
        }else {
            System.out.print(LocalTime.now()+" [\33[35;2m登录检测(博客管理系统)\33[m] login account: " + account + " password: " + passwd + "  Login successful");
            String ip=request.getRemoteAddr();
            AdminLoginLog adminLoginLog=new AdminLoginLog();
            adminLoginLog.setAdminId(obj.getId());
            adminLoginLog.setDate(new Date());
            adminLoginLog.setIp(ip);
            int log=adminLoginLogService.insert(adminLoginLog);
            Cookie cookie = new Cookie("userId",""+ obj.getId());
            cookie.setMaxAge(3600*24);
            httpServletResponse.addCookie(cookie);
            request.getSession().setAttribute("admin",adminService.getByAccount(account));
            res.put("stateCode", "2");
        }

        return res;
    }

    @RequestMapping(value = {"/admin/logout"})
    public String logout(HttpServletRequest request,HttpServletResponse response) {
        request.getSession().removeAttribute("admin");
        System.out.println("[\33[35;2m登录检测\33[m] Logout successful");
        return "redirect:/admin";

    }

}
