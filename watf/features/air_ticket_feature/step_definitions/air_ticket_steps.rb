include Pages


When /^我点击左侧机票链接$/ do
  @page.air_ticket_left.click
end

Then /^我应该成功进入生活服务频道$/ do
	@page=LifePage.new @b
	#@page.check_lifeserver?.should be_true
	@page.selfcheck
	sleep (3)
end

Then /^我应该成功进入机票系统$/ do
  puts @page.url
  @page=AirticketPage.new @b
  puts @page.url
  #@page.selfcheck
  #@page.check_frame_order?.should be_true
end

When /^我点击查询机票按钮$/ do
  @page.air_ticket_right.click
end

Given /^我已经进入线上生活服务频道$/ do
  @page=LifePage.new @b
  @page.open
  sleep (5)
end

When /^我点击进入机票频道链接$/ do
  @page.goto_air_ticket.click
  sleep (3)
end
