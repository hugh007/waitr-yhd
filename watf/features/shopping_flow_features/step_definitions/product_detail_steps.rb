include Pages

When /^我以<(.+)\/(.+)>这个身份成功登录$/ do |username,password|
  @page ||= LoginPage.new @b
  @page.login username,password
  @page.is_login?.should be_true
end

Given /^我已经进入商品<(.+)>的详细页$/ do |pid|
  @page=ProductPage.new @b
  @page.open pid
end

When /^我记录下详细页的商品价格$/ do
   ENV["First_price"]=@page.product_price.text()
   #s1=@page.product_price.text()
end

When /^我进入商品<(.+)>的搜索页$/ do |pid|
	@page=SearchPage.new @b
	@page.open_pid pid
end

When /^我记录下搜索页的商品价格$/ do
	#ENV["Last_price"]=@b.span(:id=>"price0_3338").text()
	#s2=@b.span(:id=>"price0_3338").text()
end

Then /^详细页价格<(.+)>和搜索页价格<(.+)>应该保持一致$/ do |price1,price2|
	price1='￥'+ENV["First_price"]
	price2=ENV["Last_price"]
	puts price1
	puts price2
	#(price1==price2).should be_true
end

Then /^页面显示该商品"(.+)"不销售$/ do |province|
	@page=NewPage.new @b
	tag=@page.html.include? "#{province}不销售"
	#@page.sorry_word?.should be_true
	tag.should be_true
end

Then /^我把id为<(.+)>数量为<(.+)>的商品加入购物车$/ do |pid,amount|
	@page=ProductPage.new @b
	@page.add_to_cart pid,amount
end

Then /^页面应该显示该商品已售完$/ do
	#@page.out_stock_exists?.should be_true
	@page.check_swbutton_refresh?.should be_true
end

When /^我点击降价通知$/ do
  @page.down_price_link.click
end

Then /^我可以设置降价$/ do
  
end

When /^我点击收藏$/ do
  @page.store_link.click
end

Then /^收藏夹列表中应该有我收藏的商品<(.+)>$/ do |pid|
	假如 %{我已经进入我的一号店}
	而且 %{我点击我的收藏夹}
	@page=CollectPage.new @b
	@page.open
	@page.wait_until_present
	#@page.collection?.should be_true
	tag=@page.check_product pid
	tag.should be_true
end

When /^我没有收藏过商品<(.+)>$/ do |pid|
	@page=CollectPage.new @b
	@page.open
	@page.wait_until_present
	tag=@page.check_product pid
	(!tag).should be_true
end

When /^我已经收藏过商品<(.+)>$/ do |pid|
	当 %{我已经进入我的一号店}
	而且 %{我点击我的收藏夹}
	那么 %{收藏夹列表中应该有我收藏的商品<3338>}
	#@page=CollectPage.new @b
	#@page.open
	#@page.wait_until_present
	#tag=@page.check_product pid
	#tag.should be_true
end

Then /^弹层提示我已收藏过该商品$/ do
	@page.have_collect_windows?.should be_true
end

When /^我点击加入购物清单$/ do
  
end

Then /^我可以成功加入购物清单$/ do
  
end

When /^我点击商品评分后的链接$/ do
 
end

When /^我记录下评论人数$/ do
 
end

Then /^页面转移到买家体验$/ do

end

Then /^全部评论数一致$/ do
 
end

When /^我点击我要评价$/ do
    @page.comment_button.click
end

Then /^弹窗提示不能发表原因$/ do
   @page.comment_windows_exists?.should be_true
end

When /^我进入买家体验$/ do
  
end

When /^我点击有用$/ do
  
end

Then /^有用数字加(\d+)$/ do |arg1|
  
end

When /^我点击无用$/ do
  
end

Then /^应该提示已经评价过$/ do
  
end

Then /^应该提示用户已经评价过$/ do
  
end

When /^我点击我要提问按钮$/ do
	@page.ask_link.click
end

Then /^应该跳出弹窗显示提问信息$/ do
	@page.ask_windows?.should be_true
end

Then /^弹层提示应该存在$/ do
	@page.is_cart_windows_visible?.should be_true
end

Then /^弹层提示继续购物还是去结算$/ do
	@page.is_continue_shopping_exists?.should be_true
	#@page.is_goto_account_exists?.should be_true
end