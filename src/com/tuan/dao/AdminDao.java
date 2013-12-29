package com.tuan.dao;

import com.tuan.entity.Admin;

public interface AdminDao extends BaseDao<Admin> {
     public Admin doLogin(Admin admin);
}
