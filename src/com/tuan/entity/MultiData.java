package com.tuan.entity;

import java.util.List;
import java.util.Map;
import java.util.Set;

public class MultiData {
	
	private int total;
	private List data;
	private String errStr;
	private Object condition;
	
	public List getData() {
		return data;
	}
	public void setData(List data) {
		this.data = data;
	}
	
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getErrStr() {
		return errStr;
	}
	public void setErrStr(String errStr) {
		this.errStr = errStr;
	}
	public Object getCondition() {
		return condition;
	}
	public void setCondition(Object condition) {
		this.condition = condition;
	}
	
}
