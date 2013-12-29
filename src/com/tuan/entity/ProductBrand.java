package com.tuan.entity;

import java.util.Date;

public class ProductBrand {
    private Long    id;
    private String  name;
    private Integer sort;
    private Integer status;
    private Date    createDatetime;
    private Date    updateDatetime;
    
    //extra--paging
    private Integer pageNum;
    private Integer numPerPage;
	private String startDate;
	private String endDate; 
	
    
    public ProductBrand(){
    	
    }


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Integer getSort() {
		return sort;
	}


	public void setSort(Integer sort) {
		this.sort = sort;
	}


	public Integer getStatus() {
		return status;
	}


	public void setStatus(Integer status) {
		this.status = status;
	}


	public Date getCreateDatetime() {
		return createDatetime;
	}


	public void setCreateDatetime(Date createDatetime) {
		this.createDatetime = createDatetime;
	}


	public Date getUpdateDatetime() {
		return updateDatetime;
	}


	public void setUpdateDatetime(Date updateDatetime) {
		this.updateDatetime = updateDatetime;
	}


	public Integer getPageNum() {
		return pageNum;
	}


	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}


	public Integer getNumPerPage() {
		return numPerPage;
	}


	public void setNumPerPage(Integer numPerPage) {
		this.numPerPage = numPerPage;
	}


	public String getStartDate() {
		return startDate;
	}


	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}


	public String getEndDate() {
		return endDate;
	}


	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	
  
}
