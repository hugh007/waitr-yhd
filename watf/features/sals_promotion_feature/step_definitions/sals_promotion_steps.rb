include Pages
Given  /^我有可以使用的抵用券$/ do
         @page = LoginPage.new @b
         @page.open
        当   %{我以<qa123@yihaodian.com/111111>这个身份登录}
        那么 %{我应该成功登录网站} 
        当   %{我已经进入我的一号店}      
        而且 %{我点击我的抵用券}
        那么 %{我应该正确进入抵用券页}
         @page=DiyongquanPage.new @b
         @page.page_t.exists?.should be_true
end

When /^我下单到结算页面$/ do
    @page = CartPage.new @b
    @page.open
    而且 %{购物车里没有商品}
    当   %{我购买类型为"sh_prds"(普通商品)的商品}
    而且 %{我点击结算订单}
    而且 %{选择默认的收货地址}
    而且 %{选择默认的配送方式}
    而且 %{选择默认的付款方式}
end

When /^选择默认的付款方式$/ do
   @page = CheckoutPage.new @b
   @page.select_default_payment if not @page.payment_info_done?
end

Then /^可以看到使用抵用券$/ do
   @page.coupon_link.exists?
end

When /^我点击使用抵用券$/ do
   @page.coupon_link.when_present.click
end

Then /^可用抵用券显示出来$/ do
   @page.coupon_list.exists?
end

When /^我选择第一张抵用券$/ do 
    @page.coupon_list.set   
end

When /^我点击确认抵用券$/ do 
   @page.coupon_confirm.click
end

Then /^抵用券抵扣等于抵用券面值$/ do
 puts @page.coupon_data
 puts @page.coupon_deduction
 #@page.coupon_data.text() &= @page.coupon_deduction.test()
end

When /^我已经使用抵用券$/ do
    当   %{我选择第一张抵用券}
    而且 %{我点击确认抵用券}
    而且 %{抵用券抵扣等于抵用券面值}
end
