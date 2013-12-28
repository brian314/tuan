package com.tuan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;

import com.tuan.dao.TradeChannelDao;
import com.tuan.entity.TradeChannel;

public class TradeChannelDaoImpl implements TradeChannelDao {

	@Resource
	private SqlSession sqlSession;

	@Override
	public Integer count(TradeChannel t) {
		return sqlSession.selectOne("com.tuan.mapper.TradeChannelMapper.count",t);
	}

	@Override
	public Integer delete(List<String> ids) {
		return sqlSession.delete("com.tuan.mapper.TradeChannelMapper.delete",ids);
	}

	@Override
	public List<TradeChannel> getEntity(TradeChannel t) {
		return sqlSession.selectList("com.tuan.mapper.TradeChannelMapper.getEntity", t);
	}

	@Override
	public TradeChannel getEntityById(Long id) {
		return sqlSession.selectOne("com.tuan.mapper.TradeChannelMapper.getEntityById",id);
	}

	@Override
	public Integer save(TradeChannel t) {
		return sqlSession.insert("com.tuan.mapper.TradeChannelMapper.save",t);
	}

	@Override
	public Integer update(TradeChannel t) {
		return sqlSession.update("com.tuan.mapper.TradeChannelMapper.update",t);
	}
     
	
}
