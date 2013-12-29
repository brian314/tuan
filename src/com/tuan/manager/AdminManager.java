package com.tuan.manager;

import com.tuan.entity.Admin;


public interface AdminManager extends BaseManager<Admin>{
     public Admin doLogin(Admin admin);
}
