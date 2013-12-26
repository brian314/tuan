package com.tuan.entity;

import java.util.Date;

public class Admin {
    private Long id;
    private String account;//登录帐号
    private String name;//用户名称
    private String password;//登录密码
    private Integer status;//状态
    private Integer adminType;//权限
    private Date   createDatetime;//创建时间
    private Date   updateDatetime;//更新时间
    private Date   lastLoginDatetime;//最后登录时间
    
    
    public Admin(){
    	
    }
    
    public Admin(String account,String password,int status){
    	this.account = account;
    	this.password = password;
    	this.status = status;
    }

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getAdminType() {
		return adminType;
	}

	public void setAdminType(Integer adminType) {
		this.adminType = adminType;
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

	public Date getLastLoginDatetime() {
		return lastLoginDatetime;
	}

	public void setLastLoginDatetime(Date lastLoginDatetime) {
		this.lastLoginDatetime = lastLoginDatetime;
	}
  
}
