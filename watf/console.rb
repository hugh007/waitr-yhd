require 'rubygems'
require 'irb/completion'
Dir["lib/module/**/*"].each {|file| require file}
require 'features/support/db'
require 'features/_pages/_base_page'
Dir["features/_pages/**/*.rb"].concat(Dir["features/modules/**/*.rb"]).each { |file|puts file; require file }
require "watir-webdriver"
require "watir-webdriver/wait"

if ENV["REMOTE_SERVER_IP"].nil? then
  @b = Watir::Browser.new :firefox
else
  @b = Watir::Browser.new(:remote, :url => "http://#{ENV['REMOTE_SERVER_IP']}:4444/wd/hub", :desired_capabilities => :firefox)
end


