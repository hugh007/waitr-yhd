module Pages
  class AccountSearchPage < BasePage
    def initialize b
      super b
      @name = "账户查询"
      @url = "http://my.yihaodian.com/account/displayAccount.do"
      @elements=[check_page_elements]
    end
    
#Elements
  def check_page_elements
    @b.div(:class=>"account_box")
  end
  
  def check_page?
    @b.div(:class=>"account_box").exists?
  end
  

#Actions
 
 end
end