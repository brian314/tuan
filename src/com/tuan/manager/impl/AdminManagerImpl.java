package com.tuan.manager.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.tuan.dao.AdminDao;
import com.tuan.entity.Admin;
import com.tuan.manager.AdminManager;

public class AdminManagerImpl implements AdminManager{
	@Autowired
	private AdminDao adminDao;

	@Override
	public Admin doLogin(Admin admin) {
		Admin loginAdmin = adminDao.doLogin(admin);
		if(loginAdmin!=null){//这里主要做一个工作就是更新最后登录时间
			Date lastLoginDatetime = loginAdmin.getLastLoginDatetime();
			loginAdmin.setLastLoginDatetime(new Date());
			this.adminDao.update(loginAdmin);
			loginAdmin.setLastLoginDatetime(lastLoginDatetime);
		}
		return loginAdmin;
	}

	@Override
	public Integer count(Admin t) {
		return adminDao.count(t);
	}

	@Override
	public Integer delete(List<String> ids) {
		return adminDao.delete(ids);
	}

	@Override
	public List<Admin> getEntity(Admin t) {
		return adminDao.getEntity(t);
	}

	@Override
	public Admin getEntityById(Long id) {
		return adminDao.getEntityById(id);
	}

	@Override
	public Integer save(Admin t) {
		return adminDao.save(t);
	}

	@Override
	public Integer update(Admin t) {
		return adminDao.update(t);
	}

}
