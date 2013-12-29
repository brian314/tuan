package com.tuan.manager.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.tuan.dao.ProductTypeDao;
import com.tuan.entity.ProductType;
import com.tuan.manager.ProductTypeManager;

public class ProductTypeManagerImpl implements ProductTypeManager{
	@Autowired
	private ProductTypeDao productTypeDao;

	@Override
	public Integer count(ProductType t) {
		return productTypeDao.count(t);
	}

	@Override
	public Integer delete(List<String> ids) {
		return productTypeDao.delete(ids);
	}

	@Override
	public List<ProductType> getEntity(ProductType t) {
		return productTypeDao.getEntity(t);
	}

	@Override
	public ProductType getEntityById(Long id) {
		return productTypeDao.getEntityById(id);
	}

	@Override
	public Integer save(ProductType t) {
		return productTypeDao.save(t);
	}

	@Override
	public Integer update(ProductType t) {
		return productTypeDao.update(t);
	}

}
