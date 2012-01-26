include Pages
When /^我进入首页$/ do
       @page=HomePage.new @b
       @page.open
       sleep(5)
end

When /^我点击积分兑换按钮$/ do
	@page.link(:href=>"http://www.yihaodian.com/point2/pointIndex.do").click
end

Then /^我应该正确进入积分兑换频道页$/ do
	sleep (3)
	@b.windows.last.use
    @page=CouponMallPage.new @b
    #@page.check_page?.should be_true
    @page.selfcheck
end

When /^我点击早市夜市按钮$/ do
	@page.link(:href=>"http://www.yihaodian.com/product/daily/market.do").click
end

Then /^我应该正确进入早市夜市频道页$/ do
	sleep (3)
	@b.windows.last.use
    @page=DayNightPage.new @b
    @page.check_page?.should be_true
end

When /^我点击生活服务按钮$/ do
	@page.link(:href=>"http://life.yihaodian.com/index.action").click
end

Then /^我应该正确进入生活服务频道页$/ do
	sleep (3)
	@b.windows.last.use
    @page=LifePage.new @b
    @page.check_lifeserve?.should be_true
end

When /^我点击一号商城按钮$/ do
	@page.link(:href=>"http://mall.yihaodian.com").click
end

Then /^我应该正确进入一号商城频道页$/ do
	sleep (3)
	@b.windows.last.use
    @page=MallPage.new @b
    @page.check_page?.should be_true
end

When /^我点击掌上一号店按钮$/ do
	@page.link(:href=>"http://www.yihaodian.com/cms/view.do?topicId=13483").click
end

Then /^我应该正确进入掌上一号店频道页$/ do
	sleep (3)
	@b.windows.last.use
	@page=ZhangShangPage.new @b
	puts @page.url
    #@page.check_page?.should be_true
    #@page.selfcheck
end


When /^我点击一号药网按钮$/ do
	@page.link(:href=>"http://www.111.com.cn").click
	sleep (5)	
end

Then /^我应该正确进入一号药网频道页$/ do
	@page=YaowangPage.new @b
	puts @page.url
    #@page.check_page?.should be_true
end

When /^我点击一号医网按钮$/ do
	@page.link(:href=>"http://www.yiwang.cn/").click
end

Then /^我应该正确进入一号医网频道页$/ do
	@page=YiwangPage.new @b
    #@page.check_page?.should be_true
    @page.selfcheck
end

When /^我点击一号团按钮$/ do
	@page.link(:href=>"http://www.yihaodian.com/tuangou/index.do").click
end

Then /^我应该正确进入一号团频道页$/ do
	@page=TuanPage.new @b
	puts @page.url
    #@page.check_page?.should be_true
    #@page.selfcheck
end

When /^我点击一页购按钮$/ do
	@page.link(:href=>"http://www.yihaodian.com/fastshopping/fastshop.do").click
end

Then /^我应该正确进入一页购频道页$/ do
	@page=GouPage.new @b
	puts @page.url
    #@page.check_page?.should be_true
    #@page.selfcheck
end

	
When /^我点击搜索边框右边的热门搜索关键字$/ do
    ENV["LAST_KEYWORD"]=@page.search_hot_link.text()
    @page.search_hot_link.click
end

Then /^我能正确进入到相应的搜索页面$/ do
    @page=SearchPage.new @b
    @page.check_search?(ENV["LAST_KEYWORD"]).should be_true
end

#Then /^搜索结果正确$/ do
 #    @page.is_check?(ENV["LAST_KEYWORD"]).should be_true
#end

When /^我点击所有商品分类按钮$/ do
     @page.all_product
end

Then /^我应该正确进入所有商品分类页面$/ do
	   #@page=ProductPage.new @b
	   #@page.is_serial?.should be_true
	   #@page.check_page?.should be_true
	   @page.seflcheck
end