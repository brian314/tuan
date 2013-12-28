package com.tuan.manager.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.tuan.dao.TradeChannelDao;
import com.tuan.entity.TradeChannel;
import com.tuan.manager.TradeChannelManager;

public class TradeChannelManagerImpl implements TradeChannelManager{
	@Autowired
	private TradeChannelDao tradeChannelDao;

	@Override
	public Integer count(TradeChannel t) {
		return tradeChannelDao.count(t);
	}

	@Override
	public Integer delete(List<String> ids) {
		return tradeChannelDao.delete(ids);
	}

	@Override
	public List<TradeChannel> getEntity(TradeChannel t) {
		return tradeChannelDao.getEntity(t);
	}

	@Override
	public TradeChannel getEntityById(Long id) {
		return tradeChannelDao.getEntityById(id);
	}

	@Override
	public Integer save(TradeChannel t) {
		return tradeChannelDao.save(t);
	}

	@Override
	public Integer update(TradeChannel t) {
		return tradeChannelDao.update(t);
	}

}
