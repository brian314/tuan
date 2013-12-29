package com.tuan.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface BaseDao<T> {
	//public int count(@Param("params") Object ...params);
	public Integer count(T t);
	public List<T> getEntity(T t);
	public T getEntityById(Long id);
	public Integer save(T t);
	public Integer update(T t);
	public Integer delete(@Param("ids") List<String> ids);
}
