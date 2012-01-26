module Pages
  class UnionHomePage<BasePage
    def initialize b
      super b
      @name = "网盟成功登陆后页"
      @url = "http://union.yihaodian.com/passport/index.do"
      @elements = []
    end

#Elements 
  ######网盟
  def wang_username
   @b.text_field(:id =>'account')
  end
  
  def wang_password
   @b.text_field(:id =>"password")
  end
  
  def login_button
    @b.button(:value,"登录")
  end
  
  def yeji_link
    @b.link(:text=>"实时业绩")
  end
  
  def search_order_link
    @b.link(:text=>"订单查询")
    #@b.link(:xpath,/.\/\/*[@id='container']\/div[1]\/dl\/dd[2]\/a/)
  end
  
  def income_count
    @b.link(:text=>"收益结算")
  end
  
  def base_info
    @b.link(:text=>"基本信息")
  end
  
  def money_account
    @b.link(:text=>"收款账户")
  end
  
  def change_pw
  	@b.link(:text=>"修改密码")
  end
 ###Actions
  def login_wangmeng username ,password
      wang_username.set username
      wang_password.set password
      login_button.click
  end

    def is_login? 
      @b.link(:text=>"退出").exists? and @b.link(:text=>"退出").visible?
    end

    def logout
      @b.goto "www.yihaodian.com/passport/logoff.do"
    end
 
 
  def login_wangmeng username ,password
      wang_username.set username
      wang_password.set password
      login_button.click
  end
  
  
  def check_wangmeng?
    div =b.link(:xpath =>"//id('container')/x:div[1]/x:dl/x:dd[1]/x:a")
    div.exists?
   
  end
  
  end
end
