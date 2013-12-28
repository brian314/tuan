
<div class="pageContent">
	<form method="post" action="/system/tradeChannel!save.do" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<dl class="nowrap">
				<dt>支付渠道名称：</dt>
				<dd><input name="tradeChannel.name" class="required" type="text" size="50"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>合作商ID：</dt>
				<dd><input name="tradeChannel.partnerId" class="required" type="text" size="50"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>合作商帐号：</dt>
				<dd><input name="tradeChannel.account" class="required" type="text" size="50"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>RSA密钥：</dt>
				<dd><input name="tradeChannel.privateKey" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>RSA公钥：</dt>
				<dd><input name="tradeChannel.publicKey" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>渠道RSA公钥：</dt>
				<dd><input name="tradeChannel.channelPublicKey" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>MD5密钥：</dt>
				<dd><input name="tradeChannel.secretKey" type="text" size="100"/></dd>
			</dl>
			<dl class="nowrap">
				<dt>加密类型：</dt>
				<dd>
				  <select name="tradeChannel.encryptType" class="required combox" showvalue="1">
					  <option value="1">RSA</option>
					  <option value="2">MD5</option>
				  </select>
				</dd>
			</dl>
			<dl class="nowrap">
				<dt>状态：</dt>
				<dd>
				  <select name="productBrand.status" class="required combox" showvalue="1">
					  <option value="1">有效</option>
					  <option value="0">无效</option>
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
