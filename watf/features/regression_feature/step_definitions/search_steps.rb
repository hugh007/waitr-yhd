include Pages
Given /^我已经进入搜索页$/ do
        @page=SearchPage.new @b
        @page.open
end

When /^我在搜索框输入<(.+)>搜索$/ do |name_input|
  @page.search name_input
  @page=SearchPage.new @b
end

Then /^我查询到叫<(.+)>的商品$/ do |product_name|
  @page.check_search?(product_name).should be_true
end

When /^我点击品牌筛选栏里品牌<(.+)>$/ do |brand|
  @page.brand_filter_link(brand).click
end

Then /^搜索页面正确打开$/ do
  @page = SearchPage.new @b
  @page.selfcheck
end

Then /^搜索结果商品名都包含<(.+)>$/ do |title|
  @page = SearchPage.new @b
  @page.result_all_contain?(title).should be_true
end

When /^我点击价格筛选栏里价格区间<(.+)>$/ do |price_range|
  @page.filter_link(price_range).click
end

When /^我在自定义价格筛选栏里输入价格<(\d+)\-(\d+)>元$/ do |low_price,high_price|
  @page.filter_low_price_input.set low_price
  @page.filter_high_price_input.set high_price
  @page.filter_price_commit_btn.click
end

Then /^搜索结果商品价格都应该在<(\d+)\-(\d+)>元范围内$/ do |low_price,high_price|
  @page.result_all_in_price_range?(low_price,high_price).should be_true
end
