require 'cucumber/formatter/unicode'

require 'yaml'
require "#{File.dirname(__FILE__)}/site"
site=YAML.load_file 'features/_pages/site.yaml'
ENV['env']= ENV['env'] || 'prod'
if ENV['env'].downcase == 'prod'
  prods=YAML.load_file 'features/fixtures/products_prod.yaml'
else
  prods=YAML.load_file 'features/fixtures/products_test.yaml'
end
require "rubygems"
require "ruby-debug"
require "watir-webdriver"
require "watir-webdriver/wait"

if ENV["REMOTE_SERVER_IP"].nil? then
  b = Watir::Browser.new :firefox
else
  b = Watir::Browser.new(:remote, :url => "http://#{ENV['REMOTE_SERVER_IP']}:4444/wd/hub", :desired_capabilities => :firefox)
end

#capabilities = Selenium::WebDriver::Remote::Capabilities.htmlunit(:javascript_enabled => true)
#b = Watir::Browser.new(:remote, :url => "http://192.168.145.1:4444/wd/hub", :desired_capabilities => :htmlunit)
#b = Watir::Browser.new(:remote, :url => "http://192.168.8.212:4444/wd/hub", :desired_capabilities => :firefox)

at_exit do
#  java.lang.System.exit(1) 
  b.quit
end

Before do
  @b = b
  @site = site
  @prods = prods
  ENV['WATF_ERROR_MSG'] = ''
  @b.goto "http://www.yihaodian.com/cart/cart2Enabled.do?type=true"
  p = Pages::HomePage.new @b
  p.open
  p.val_province_btn.click if p.val_province_btn.exists? && p.val_province_btn.visible?
  #@b.cookie.all.delete
end

After do |scenario|
  # Do something after each scenario.
  # The +scenario+ argument is optional, but
  # if you use it, you can inspect status with
  # the #failed?, #passed? and #exception methods.
  if scenario.failed?
    $stderr.puts "last url: #{b.url}"
    $stderr.puts ENV['WATF_ERROR_MSG']
    b.driver.save_screenshot("./screenshots/#{scenario.source_tag_names}_#{scenario.name}.png")
  end
  wqty=b.windows.size
  if wqty > 1
    (wqty - 1).times do |n|
      b.windows[1].close
    end
  end

end

