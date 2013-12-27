package com.tuan.action.system;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.tuan.action.BaseAction;
import com.tuan.entity.ProductType;
import com.tuan.manager.ProductTypeManager;

public class ProductTypeAction extends BaseAction {
	private static final Logger logger = Logger.getLogger(ProductTypeAction.class);
	private ProductType productType = new ProductType();
    @Autowired
    private ProductTypeManager productTypeManager;
	
	
	@Override
	public String execute() throws Exception {
		
		//设置查询参数
		productType.setNumPerPage(numPerPage);
		productType.setPageNum(pageNum);
		
		//查询数据
		List<ProductType> resultList = productTypeManager.getEntity(productType);
		int resultCount = productTypeManager.count(productType);
		
		//设置数据,返回给前端用
		multiData.setData(resultList);
		multiData.setTotal(resultCount);
		multiData.setCondition(productType);
		
		
		return SUCCESS;
	}


	public ProductType getProductType() {
		return productType;
	}


	public void setProductType(ProductType productType) {
		this.productType = productType;
	}

}
