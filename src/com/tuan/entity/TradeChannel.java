package com.tuan.entity;

import java.util.Date;

public class TradeChannel {
    private Long    id;
    private String  name;
    private String  partnerId;
    private String  account;
    private String  privateKey;
    private String  publicKey;
    private String  channelPublicKey;
    private String  secretKey;
    private Integer encryptType;
    private Integer status;
    private Date    createDatetime;
    private Date    updateDatetime;
    
    //extra--paging
    private Integer pageNum;
    private Integer numPerPage;
	private String startDate;
	private String endDate; 
	
	
    
    public TradeChannel(){
    	
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



	public String getPartnerId() {
		return partnerId;
	}



	public void setPartnerId(String partnerId) {
		this.partnerId = partnerId;
	}



	public String getAccount() {
		return account;
	}



	public void setAccount(String account) {
		this.account = account;
	}



	public String getPrivateKey() {
		return privateKey;
	}



	public void setPrivateKey(String privateKey) {
		this.privateKey = privateKey;
	}



	public String getPublicKey() {
		return publicKey;
	}



	public void setPublicKey(String publicKey) {
		this.publicKey = publicKey;
	}



	public String getChannelPublicKey() {
		return channelPublicKey;
	}



	public void setChannelPublicKey(String channelPublicKey) {
		this.channelPublicKey = channelPublicKey;
	}



	public String getSecretKey() {
		return secretKey;
	}



	public void setSecretKey(String secretKey) {
		this.secretKey = secretKey;
	}



	public Integer getEncryptType() {
		return encryptType;
	}



	public void setEncryptType(Integer encryptType) {
		this.encryptType = encryptType;
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
