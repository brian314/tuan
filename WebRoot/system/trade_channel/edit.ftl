
<div class="pageContent">
	<form method="post" action="/system/tradeChannel!save.do" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<input name="tradeChannel.id" type="hidden" value="${tradeChannel.id}"/>
		<div class="pageFormContent" layoutH="56">
			<dl class="nowrap">
				<dt>支付渠道名称：</dt>
				<dd><input name="tradeChannel.name" class="required" type="text" size="50" value="${tradeChannel.name}"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>合作商ID：</dt>
				<dd><input name="tradeChannel.partnerId" class="required" type="text" size="50" value="${tradeChannel.partnerId}"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>合作商帐号：</dt>
				<dd><input name="tradeChannel.account" class="required" type="text" size="50" value="${tradeChannel.account}"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>RSA密钥：</dt>
				<dd><input name="tradeChannel.privateKey" type="text" size="100" value="${tradeChannel.privateKey}"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>RSA公钥：</dt>
				<dd><input name="tradeChannel.publicKey" type="text" size="100" value="${tradeChannel.publicKey}"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>渠道RSA公钥：</dt>
				<dd><input name="tradeChannel.channelPublicKey" type="text" size="100" value="${tradeChannel.channelPublicKey}"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>MD5密钥：</dt>
				<dd><input name="tradeChannel.secretKey" type="text" size="100" value="${tradeChannel.secretKey}"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>加密类型：</dt>
				<dd>
				  <select name="tradeChannel.encryptType" class="required combox" showvalue="${tradeChannel.encryptType}">
					  <option value="1" <#if tradeChannel.encryptType==1>selected="selected"</#if>>RSA</option>
					  <option value="2" <#if tradeChannel.encryptType==2>selected="selected"</#if>>MD5</option>
				  </select>
				</dd>
			</dl>
			<dl class="nowrap">
				<dt>状态：</dt>
				<dd>
				  <select name="tradeChannel.status" class="required combox" showvalue="${tradeChannel.status}">
					  <option value="1" <#if tradeChannel.status==1>selected="selected"</#if>>有效</option>
					  <option value="0" <#if tradeChannel.status==0>selected="selected"</#if>>无效</option>
				  </select>
				</dd>
			</dl>
		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
