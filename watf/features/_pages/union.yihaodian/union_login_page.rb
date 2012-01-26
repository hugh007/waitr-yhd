module Pages
  class UnionLoginPage<BasePage
    def initialize b
      super b
      @name = "网盟首页"
      @url = "http://union.yihaodian.com"
      #@url="http://union.yihaodian.com/passport/login_input.do"
      @elements = [wang_username,wang_password,login_button]
    end

#Elements  
  ####网盟
  def wang_username
   @b.text_field(:id =>'account')
  end
  
  def wang_password
   @b.text_field(:id =>"password")
  end
  
  def login_button
    @b.button(:value,"登录")
  end

###广告区  
  def pictures
   @b.link(:xpath=>"//div[@id='container']//div[@class='indexright']//div[@class='banner400']//a") 
  end
  
####网盟公告区
   def wang_notice
     @b.dl(:xpath=>"//div[@id='container']//div[@class='subleft']/dl[1]")
   end
   
####活动通知区
   def activity_inform
     @b.dl(:xpath=>"//div[@id='container']//div[@class='subleft']//dl[2]")
   end
   
#Actions 
  def login_wangmeng username ,password
      wang_username.set username
      wang_password.set password
      login_button.click
  end
  
  def check_pictures?
    pictures.exists?
  end
  
  def check_wang_notice?
    wang_notice.exists?
  end 

  def check_activity_inform?
    activity_inform.exists?
  end 
    
  end
end
