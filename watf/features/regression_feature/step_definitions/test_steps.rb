include Pages


When /^我点击一个热门词$/ do 
  ENV["LAST_KEYWORD"] = @page.search_hot_link.text()
  @page.search_hot_link.click
end


Then /^我正确进入了该热门词的搜索结果页$/ do 
  @page = SearchPage.new @b
  @page.check_search?(ENV["LAST_KEYWORD"]).should be_true
end


When /^我点击类别<(.+)>$/ do |catagory_name|
  @page = SearchPage.new @b
  @page.select_category catagory_name
end

When /^我正确进入了类别为<(.+)>的搜索页面$/ do |catagory_name|
	   @page.is_result_top_navi_include?(catagory_name).should be_true
end

Then /^正确的刷新了id是<(.+)>的商品的价格$/ do |pid|
  sleep(3)
  @page.check_buybutton_refresh?(pid).should be_true
 
end

##省份
When /^我进入首页界面$/ do
	   @page = HomePage.new @b
	   @page.open
end

When /^我切换省份到<(.+)>$/ do |province|
  @page.select_area province
end

Then /^当前省份显示为<(.+)>$/ do |province|
  @page.curr_province.should == (province + "站")
end

When /^我切换省份到<(.+)>然后再切换到<(.+)>$/ do |area1,area2|
  @page = HomePage.new @b
  @page.select_area area1
  ENV["First_area"] = @b.link(:onclick,/index_channel_3/).href
  @page.select_area area2
  ENV["Last_area"] =  @b.link(:onclick,/index_channel_3/).href
end

Then /^省份<(.+)>和省份<(.+)>的首页广告是不同的$/ do |img1,img2|
# @page = HomePage.new @b
  img1=ENV["First_area"]
  img2=ENV["Last_area"]
  @page.check_src_img?(img1,img2).should be_false
end

When /^我单击了我的积分$/ do 
  @page = ScorePage.new @b
  @page.open
end

Then /^正确的查询到当前的积分$/ do 
  #@page = ScorePage.new @b
  @page.check_score?.should be_true
end


When /^我单击了我的订单$/ do 
  @page = MyOrderPage.new @b
  @page.open
end


Then /^正确的显示了我的订单$/ do 
  @page = MyOrderPage.new @b
  @page.selfcheck
end




When /^网盟登录成功$/ do
  @page = UnionPage.new @b
  @page.check_wangmeng?
end

When /^随机点击首页的<(\d+)>个品牌链接$/ do |n|
  count = @page.brand_links.size
  blinks = @page.brand_links
  n.to_i.times do
    @b.windows.first.use
    blink=blinks[rand(count)-1]
    blink.click
    @b.windows.last.use
    @page = BrandPage.new @b
    @page.selfcheck
  end
end

Then /^所有品牌页均能正确打开$/ do
end

Given /^我已经进入<(?:[^\d]*)?(\d+).*>的品牌页$/ do |bid|
  @page = BrandPage.new @b
  @page.open bid
end

When /^点击品牌页左侧边栏分类导航$/ do
  @page.cate_navi_links.first.click
end

Then /^正确进入品牌搜索页$/ do
  @page = SearchBrandPage.new @b
  @page.selfcheck
end
