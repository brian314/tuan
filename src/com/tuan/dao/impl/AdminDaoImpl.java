package com.tuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;

import com.tuan.dao.AdminDao;
import com.tuan.entity.Admin;

public class AdminDaoImpl implements AdminDao {

	@Resource
	private SqlSession sqlSession;
	
	@Override
	public Admin doLogin(Admin admin) {
		return sqlSession.selectOne("com.tuan.mapper.AdminMapper.doLogin",admin);
	}

	@Override
	public Integer count(Admin t) {
		return sqlSession.selectOne("com.tuan.mapper.AdminMapper.count",t);
	}

	@Override
	public Integer delete(List<String> ids) {
		return sqlSession.delete("com.tuan.mapper.AdminMapper.delete",ids);
	}

	@Override
	public List<Admin> getEntity(Admin t) {
		return sqlSession.selectList("com.tuan.mapper.AdminMapper.getEntity", t);
	}

	@Override
	public Admin getEntityById(Long id) {
		return sqlSession.selectOne("com.tuan.mapper.AdminMapper.getEntityById",id);
	}

	@Override
	public Integer save(Admin t) {
		return sqlSession.insert("com.tuan.mapper.AdminMapper.save",t);
	}

	@Override
	public Integer update(Admin t) {
		return sqlSession.update("com.tuan.mapper.AdminMapper.update",t);
	}
     
	
}
