package com.tuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;

import com.tuan.dao.ProductTypeDao;
import com.tuan.entity.ProductType;

public class ProductTypeDaoImpl implements ProductTypeDao {

	@Resource
	private SqlSession sqlSession;

	@Override
	public Integer count(ProductType t) {
		return sqlSession.selectOne("com.tuan.mapper.ProductTypeMapper.count",t);
	}

	@Override
	public Integer delete(List<String> ids) {
		return sqlSession.delete("com.tuan.mapper.ProductTypeMapper.delete",ids);
	}

	@Override
	public List<ProductType> getEntity(ProductType t) {
		return sqlSession.selectList("com.tuan.mapper.ProductTypeMapper.getEntity", t);
	}

	@Override
	public ProductType getEntityById(Long id) {
		return sqlSession.selectOne("com.tuan.mapper.ProductTypeMapper.getEntityById",id);
	}

	@Override
	public Integer save(ProductType t) {
		return sqlSession.insert("com.tuan.mapper.ProductTypeMapper.save",t);
	}

	@Override
	public Integer update(ProductType t) {
		return sqlSession.update("com.tuan.mapper.ProductTypeMapper.update",t);
	}
     
	
}
