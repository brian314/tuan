package com.tuan.action.system;

import java.text.DecimalFormat;
import java.text.MessageFormat;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.tuan.action.BaseAction;
import com.tuan.entity.ProductType;
import com.tuan.manager.ProductTypeManager;
import com.tuan.utils.Constants;

public class ProductTypeAction extends BaseAction {
	private static final Logger logger = Logger.getLogger(ProductTypeAction.class);
	private ProductType productType = new ProductType();
    private List<String> ids;
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
		
		//查询父ID
		for(ProductType pt : resultList){
			ProductType dbFatherProductType = productTypeManager.getEntityById(pt.getFatherId());
			if(dbFatherProductType==null){
				pt.setFatherName("------");
			}else{
				pt.setFatherName(dbFatherProductType.getName());
			}
		}
		
		
		//设置数据,返回给前端用
		multiData.setData(resultList);
		multiData.setTotal(resultCount);
		multiData.setCondition(productType);
		
		
		return SUCCESS;
	}
	
	
	/**
	 * 跳转到新增页面
	 * */
	public String add() throws Exception {
		//查询所有分类,给combox用
		ProductType params = new ProductType();
		params.setStatus(1);
		List<ProductType> topicList = productTypeManager.getEntity(params);
		getRequest().setAttribute("productTypeList",topicList);
		return "add";
	}

	/**
	 * 编辑页面
	 * */
	public String edit() throws Exception {
		//查询要编辑的那个分类
		productType = productTypeManager.getEntityById(Long.valueOf(getRequest().getParameter("id")));
		
		//查询所有项目,给combox用
		ProductType params = new ProductType();
		params.setStatus(1);
		List<ProductType> topicList = productTypeManager.getEntity(params);
		getRequest().setAttribute("productTypeList",topicList);
		
		return "edit";
	}
	
	/**
	 * 保存,新增跟编辑都走这里，根据Entity来判断是新增还是更新
	 * */
	public String save() throws Exception {
		int result = 1;
		String msg = "保存成功！";
		
		if(productType.getId()!=null){//编辑保存
			//先找出father
			ProductType fProductType = productTypeManager.getEntityById(productType.getFatherId());
			//计算父类路径
			String fatherPath = fProductType.getFatherPath()+ "," + fProductType.getId();
			if(fatherPath.startsWith(",")) fatherPath = fatherPath.substring(1, fatherPath.length());
			//计算排序路径
			DecimalFormat df= new DecimalFormat("00");
			String orderPath = fProductType.getOrderPath() + df.format(productType.getSort());
			productType.setFatherPath(fatherPath);
			productType.setOrderPath(orderPath);
			
			
			if(productTypeManager.update(productType)!=1){msg = "保存失败！";result = 0;}	
		}else{//新增保存
			//先找出father
			ProductType fProductType = productTypeManager.getEntityById(productType.getFatherId());
			//计算父类路径
			String fatherPath = fProductType.getFatherPath()+ "," + fProductType.getId();
			if(fatherPath.startsWith(",")) fatherPath = fatherPath.substring(1, fatherPath.length());
			//计算排序路径
			DecimalFormat df= new DecimalFormat("00");
			String orderPath = fProductType.getOrderPath() + df.format(productType.getSort());
			productType.setFatherPath(fatherPath);
			productType.setOrderPath(orderPath);
			productType.setStatus(1);
			if(productTypeManager.save(productType)!=1){msg = "保存失败！";result = 0;}	
		}
		//显示保存结果
		if(result==1){
			getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_DONE,msg,"productType","","closeCurrent",""));
			return Constants.AJAX_RESULT;
		}else{
			getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_ERROR,msg,"productType","","closeCurrent",""));
			return Constants.AJAX_RESULT;
		}
	}
	
	/**
	 * 删除
	 * */
	public String delete() throws Exception {
		if(ids!=null){
			int result = productTypeManager.delete(ids);
			if(result>0){
				getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_DONE,"删除数据成功！","productType","","",""));
				return Constants.AJAX_RESULT;
			}
		}
		getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_ERROR,"删除数据失败！","productType","","",""));
		return Constants.AJAX_RESULT;
	}

	public List<String> getIds() {
		return ids;
	}
	


	public ProductType getProductType() {
		return productType;
	}


	public void setProductType(ProductType productType) {
		this.productType = productType;
	}


	public void setIds(List<String> ids) {
		this.ids = ids;
	}

}
