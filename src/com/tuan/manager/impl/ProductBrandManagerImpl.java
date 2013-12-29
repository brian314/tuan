package com.tuan.manager.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.tuan.dao.ProductBrandDao;
import com.tuan.entity.ProductBrand;
import com.tuan.manager.ProductBrandManager;

public class ProductBrandManagerImpl implements ProductBrandManager{
	@Autowired
	private ProductBrandDao productBrandDao;

	@Override
	public Integer count(ProductBrand t) {
		return productBrandDao.count(t);
	}

	@Override
	public Integer delete(List<String> ids) {
		return productBrandDao.delete(ids);
	}

	@Override
	public List<ProductBrand> getEntity(ProductBrand t) {
		return productBrandDao.getEntity(t);
	}

	@Override
	public ProductBrand getEntityById(Long id) {
		return productBrandDao.getEntityById(id);
	}

	@Override
	public Integer save(ProductBrand t) {
		return productBrandDao.save(t);
	}

	@Override
	public Integer update(ProductBrand t) {
		return productBrandDao.update(t);
	}

}
