package com.tuan.action.system;

import java.text.MessageFormat;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.tuan.action.BaseAction;
import com.tuan.entity.TradeChannel;
import com.tuan.manager.TradeChannelManager;
import com.tuan.utils.Constants;

public class TradeChannelAction extends BaseAction {
	private static final Logger logger = Logger.getLogger(TradeChannelAction.class);
	private TradeChannel tradeChannel = new TradeChannel();
    private List<String> ids;
    @Autowired
    private TradeChannelManager tradeChannelManager;
	
	
	@Override
	public String execute() throws Exception {
		
		//设置查询参数
		tradeChannel.setNumPerPage(numPerPage);
		tradeChannel.setPageNum(pageNum);
		
		//查询数据
		List<TradeChannel> resultList = tradeChannelManager.getEntity(tradeChannel);
		int resultCount = tradeChannelManager.count(tradeChannel);
		
		//设置数据,返回给前端用
		multiData.setData(resultList);
		multiData.setTotal(resultCount);
		multiData.setCondition(tradeChannel);
		
		
		return SUCCESS;
	}
	
	
	/**
	 * 跳转到新增页面
	 * */
	public String add() throws Exception {
		return "add";
	}

	/**
	 * 编辑页面
	 * */
	public String edit() throws Exception {
		//查询要编辑的那个分类
		tradeChannel = tradeChannelManager.getEntityById(Long.valueOf(getRequest().getParameter("id")));

		return "edit";
	}
	
	/**
	 * 保存,新增跟编辑都走这里，根据Entity来判断是新增还是更新
	 * */
	public String save() throws Exception {
		int result = 1;
		String msg = "保存成功！";
		
		if(tradeChannel.getId()!=null){//编辑保存
			if(tradeChannelManager.update(tradeChannel)!=1){msg = "保存失败！";result = 0;}	
		}else{//新增保存
			if(tradeChannelManager.save(tradeChannel)!=1){msg = "保存失败！";result = 0;}	
		}
		//显示保存结果
		if(result==1){
			getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_DONE,msg,"tradeChannel","","closeCurrent",""));
			return Constants.AJAX_RESULT;
		}else{
			getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_ERROR,msg,"tradeChannel","","closeCurrent",""));
			return Constants.AJAX_RESULT;
		}
	}
	
	/**
	 * 删除
	 * */
	public String delete() throws Exception {
		if(ids!=null){
			int result = tradeChannelManager.delete(ids);
			if(result>0){
				getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_DONE,"删除数据成功！","tradeChannel","","",""));
				return Constants.AJAX_RESULT;
			}
		}
		getRequest().setAttribute(Constants.AJAX_RESULT,MessageFormat.format(Constants.AJAX_ERROR,"删除数据失败！","tradeChannel","","",""));
		return Constants.AJAX_RESULT;
	}

	public List<String> getIds() {
		return ids;
	}
	
	public void setIds(List<String> ids) {
		this.ids = ids;
	}


	public TradeChannel getTradeChannel() {
		return tradeChannel;
	}


	public void setTradeChannel(TradeChannel tradeChannel) {
		this.tradeChannel = tradeChannel;
	}

}
