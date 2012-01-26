include Pages

Given /^我进入网盟首页$/ do
	@page=UnionLoginPage.new @b
	@page.open
	sleep (3)
end

Then /^我应该成功进入网盟首页$/ do
	@page.selfcheck
end

Then /^首页广告图片应该显示$/ do
	@page.check_pictures?.should be_true
end

Then /^网盟公告应该显示$/ do
	@page.check_wang_notice?.should be_true
end

Then /^活动通知应该显示$/ do
	@page.check_activity_inform?.should be_true
end


When /^我点击网站联盟$/ do
  @page.union_link.click
end

Then /^我应该正确进入网盟登录页$/ do
  @page=UnionLoginPage.new @b
  puts @page.url
  #@page.check_wangmeng?.should be_true
  #@page.selfcheck
end

When /^我进入网盟注册页$/ do

end

When /^我应该注册成功$/ do

end

Given /^我已经进入网盟登录页$/ do
  sleep (5)
  @page=UnionHomePage.new @b
  @page.open
  sleep (5)
end

When /^我以<(.+)\/(.+)>这个身份登录网盟$/ do |username,password|
	@page.login_wangmeng username,password
	sleep (3)
end

Then /^我可以成功登录网盟$/ do
	@page=UnionHomePage.new @b
	@page.is_login?.should be_true
end

Given /^我已经成功登录网盟$/ do
   假如 %{我已经进入网盟登录页}
   当  %{我以<qa123/111111>这个身份登录网盟}
   那么 %{我可以成功登录网盟}
end

When /^我点击实时业绩$/ do
    @page.yeji_link.click
end

Then /^我应该成功进入实时业绩页$/ do
   @page=YejiPage.new @b
   @page.selfcheck
end

When /^我点击订单查询$/ do
   @page.search_order_link.click
end

Then /^我应该成功进入订单查询页$/ do
  @page=SearchOrderPage.new @b
  @page.selfcheck
end

When /^我点击收益结算$/ do
  @page.income_count.click
end

When /^我应该成功进入收益结算页$/ do
   @page=IncomePage.new @b
   @page.selfcheck
end

When /^我点击链接模板$/ do

end

Then /^我应该成功进入链接模板页$/ do

end

When /^我点击自定义链接$/ do

end

When /^我应该成功进入自定义链接页$/ do

end

When /^我点击基本信息$/ do
   @page.base_info.click
   sleep (3)
end

Then /^我应该成功进入基本信息页$/ do
   @page=BaseinfoPage.new @b
   @page.selfcheck
end

Then /^我点击修改信息按钮$/ do
	@page.change_info_button.click
end

Then /^我修改基本信息为<(.+)\/(.+)\/(.+)\/(.+)>$/ do |name,identity,tel,address|
    @page.new_info name,identity,tel,address
end

Then /^我选择网站类型为<(.+)>$/ do |type_name|
	@page.type_set type_name
end

Then /^我点击保存信息按钮$/ do
	@page.save_button.click
	sleep (3)
end

Then /^基本信息应该被正确修改$/ do
	@page=SaveinfoPage.new @b
	@page.selfcheck
	#@page.check_change_info(type_name).should be_true
end

When /^我点击收款账户$/ do
    @page.money_account.click
end

When /^我点击修改账户按钮$/ do
	@page=MoneyAccountPage.new @b
	@page.change_account.click
end

When /^我修改账号为<(.+)>$/ do |newaccount|
	sleep (5)
	@page.set_account newaccount
end

Then /^账号应该更新为修改后的账号$/ do

end

Then /^我点击修改密码链接$/ do
	@page.change_pw.click
end

When /^我输入自由网盟的原密码和新密码<(.+)\/(.+)>$/ do |oldpassword,newpassword|
	@page=UnionUpdatepwPage.new @b
	@page.change_password oldpassword,newpassword
	sleep (2)
end


Then /^页面提示<(.+)>$/ do |msg|
     sleep (3)
end

