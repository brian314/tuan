package com.tuan.manager;

import java.util.List;

public interface BaseManager<T> {
	public Integer count(T t);
	public List<T> getEntity(T t);
	public T getEntityById(Long id);
	public Integer save(T t);
	public Integer update(T t);
	public Integer delete(List<String> ids);
}
