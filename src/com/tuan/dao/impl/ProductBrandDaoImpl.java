package com.tuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;

import com.tuan.dao.ProductBrandDao;
import com.tuan.entity.ProductBrand;

public class ProductBrandDaoImpl implements ProductBrandDao {

	@Resource
	private SqlSession sqlSession;

	@Override
	public Integer count(ProductBrand t) {
		return sqlSession.selectOne("com.tuan.mapper.ProductBrandMapper.count",t);
	}

	@Override
	public Integer delete(List<String> ids) {
		return sqlSession.delete("com.tuan.mapper.ProductBrandMapper.delete",ids);
	}

	@Override
	public List<ProductBrand> getEntity(ProductBrand t) {
		return sqlSession.selectList("com.tuan.mapper.ProductBrandMapper.getEntity", t);
	}

	@Override
	public ProductBrand getEntityById(Long id) {
		return sqlSession.selectOne("com.tuan.mapper.ProductBrandMapper.getEntityById",id);
	}

	@Override
	public Integer save(ProductBrand t) {
		return sqlSession.insert("com.tuan.mapper.ProductBrandMapper.save",t);
	}

	@Override
	public Integer update(ProductBrand t) {
		return sqlSession.update("com.tuan.mapper.ProductBrandMapper.update",t);
	}
     
	
}
