include Pages

Given /^我已经成功登陆$/ do
	@page=LoginPage.new @b
	@page.open
	当 %{我以<qa123@yihaodian.com/111111>这个身份登录}
    那么 %{我应该成功登录网站}
end

When /^我点击我的一号店按钮$/ do
	@page.link(:href=>"http://my.yihaodian.com/member/my.do").click
end

Then /^我应该正确进入我的一号店页面$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.selfcheck
end

Given /^我已经进入我的一号店$/ do
	当 %{我已经成功登陆}
    @page=MyInformationPage.new @b
    @page.open
    @page.try_close_myinfo_form
end

When /^我进入我的一号店$/ do
    @page=MyInformationPage.new @b
    @page.open
    @page.try_close_myinfo_form	
end

When /^我点击我的订单$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.myorder_link.click
end

Then /^我应该正确进入我的订单页$/ do
	@page=MyOrderPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击我的收藏夹$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.collect_link.click
end

Then /^我应该正确进入我的收藏夹页$/ do
	@page=CollectPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击我的团购$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.tuangou_link.click	
end

Then /^我应该正确进入我的团购页$/ do
	@page=TuangouPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击我的手机充值$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.chongzhi_link.click	
end

Then /^我应该正确进入我的手机充值页$/ do
	@page=ChongzhiPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击我的机票$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.air_ticket_link.click
end

Then /^我应该正确进入我的机票页$/ do
	@page=MyAirticketPage.new @b
	#@page.check_ensure_button?.should be_true
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击我的电子票券$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.e_ticket_link.click	
end

Then /^我应该正确进入我的电子票券页$/ do
	@page=EticketPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击评价商品$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.product_comment_link.click
end

Then /^我可以正确进入商品评论页$/ do
	@page=CommentPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击账户查询$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.account_search_link.click
end

Then /^我可以正确进入账户查询页$/ do
	@page=AccountSearchPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击积分查询与兑换$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.jifen_link.click
end

Then /^我可以正确进入积分查询与兑换页$/ do
	@page=ScorePage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击我的礼品卡$/ do 
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.gift_card_link.click
end

Then /^我应该正确进入礼品卡页$/ do
	@page=GiftcardPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击我的抵用券$/ do 
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.diyong_link.click
end

Then /^我应该正确进入抵用券页$/ do
	@page=DiyongquanPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击一键分享$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.one_key_share_link.click
end

Then /^我应该正确进入一键分享页$/ do
	@page=SharePage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击我的消息$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.message_link.click
end

Then /^我应该正确进入我的消息页$/ do
	@page=MessagePage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击编辑资料$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.editinfo.click	
end

Then /^我应该正确进入编辑页$/ do
	@page=EditinfoPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击修改密码$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.changepw_link.click
	sleep (3)	
end

Then /^我应该正确进入修改密码页$/ do
	@page=ChangepwPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击手机绑定$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.mobile_band_link.click	
end

Then /^我应该正确进入手机绑定页$/ do
	@page=MobilebandPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击地址簿管理$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.address.click
end

Then /^我应该正确进入地址管理页$/ do
	@page=AddressPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击邀请好友$/ do
	@page=MyInformationPage.new @b
    @page.try_close_myinfo_form
	@page.invite_friend_link.click	
end

Then /^我应该正确进入邀请好友页$/ do
	@page=InvitefriendPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

When /^我点击编辑头像链接$/ do
	@page=EditinfoPage.new @b
	@page.edit_image.click
	sleep (3)
end

Then /^应该有弹层显示可选头像$/ do
	@page.image_windows?.should be_true
end

When /^我选择第一个头像并保存$/ do
	@page.chose_image
end

Then /^我可以成功保存头像$/ do
	@page.check_image_right?.should be_true
end

Then /^我可以编辑头像$/ do
	@page=EditinfoPage.new @b
	#@page.check_page?.should be_true
	@page.selfcheck
end

Then /^弹层提示修改成功$/ do
	@page.show_msg
end

When /^我输入收货人<(.+)>$/ do |username|
	@page=AddressPage.new @b
	@page.username_input username
end

When /^我点击修改按钮$/ do
	@page=AddressPage.new @b
	@page.modify_button.click
end

When /^我修改地址<(.+)>$/ do |address|
	@page.address_input address
end

When /^我点击取消商品订单按钮$/ do
	@page=MyOrderPage.new @b
# 订单id不能在步骤里写死, 这个步骤要重新写
    raise Exception
	@page.button(:oid=>"21945833").click
	#@page.button(:text=>"取消商品订单").click
end

When /^我选择并确认第一个取消原因$/ do
	#@page.cancel_reason_select.select("1520_5980")
	@page.confirm_cancel
end

When /^我点击确定按钮$/ do
	@page.cancel_reason_ok_btn.click
end

When /^我进入商品pid为<(.+)>的详细页$/ do |pid|
	@page=ProductPage.new @b
	@page.open pid
	sleep 3
end

When /^我输入原密码和新密码<(.+)\/(.+)>$/ do |oldpassword,newpassword|
	sleep (5)
	@page=ChangepwPage.new @b
	@page.change_password oldpassword,newpassword
end

Then /^页面应该提示<(.+)>$/ do |msg|
    @page=UpdatepwPage.new @b
    @page.windows_msg?(msg).should be_true
end

Then /^我点击第一个地址的修改按钮$/ do
	@page=AddressPage.new @b
	@page.modify_button.click
end

Then /^修改框应该存在并可见$/ do
	@page.modify_win_visible?.should be_true
	sleep (3)
end

When /^我清空邮件和手机$/ do
	@page.email_input.clear
	@page.mobile_input.clear
	@page.tel_input.clear
end

When /^我点击保存按钮$/ do
	@page.save_button.click
	sleep (3)
end

Then /^弹层提示<(.+)>$/ do |msg|
	@page.windows_msg?(msg).should be_true
end

When /^我点击弹层的确定按钮$/ do
	@page.pop_win_ok_btn.click
   sleep (3)
end

When /^我输入邮件<(.+)>$/ do |email|
	@page.email_input.set email
end

When /^我输入手机<(.+)>$/ do |mobile|
	@page.mobile_input.set mobile
	sleep (3)
end

Then /^我可以成功保存地址信息$/ do
	
end

Then /^最近订单数应该为5$/ do
	@page.latest_order_amount?.should be_true
	#@page.latest_order_amount
end

Then /^订单状态应该正确$/ do
	
end

When /^我点击我要买机票$/ do
	sleep (3)
	@page.buy_airticket_link.click
end

Then /^我应该可以进入购买机票页$/ do
	sleep (5)
	@page=AirticketPage.new @b
	@page.check_frame_order?.should be_true
end

Then /^应该存在未使用的抵用券$/ do
	@page.diyongquan_exists?.should be_true
end

Then /^未使用抵用券应该存在$/ do
	@page.not_use_link_exists?.should be_true
end

Then /^已使用抵用券应该存在$/ do
	@page.have_use_link_exists?.should be_true
end

Then /^已过期抵用券应该存在$/ do
	@page.out_of_date_link_exists?.should be_true
end

Then /^机票订单应该存在$/ do
	#@page.ticket_order_link_exists?.should be_true
end

Then /^常用乘机人应该存在$/ do
	#@page.people_link_exists?.should be_true
end

Then /^联系信息维护应该存在$/ do
	#@page.maintain_link_exists?.should be_true
end

Then /^积分类型选择框应该存在$/ do
	@page.point_type_exists?.should be_true
end

Then /^积分交易状态应该存在$/ do
	@page.point_status_exists?.should be_true
end

When /^我选择积分类型为<(.+)>$/ do |type_name|
	sleep (5)
	@page.point_type_input type_name
end

When /^我选择积分状态为<(.+)>$/ do |status_name|
	sleep (5)
	@page.point_status_input status_name
end

Then /^积分列表应该正确列出所选订单$/ do
	
end