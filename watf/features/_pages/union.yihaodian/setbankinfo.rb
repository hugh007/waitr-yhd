module Pages
  class SetAccountPage < BasePage
    def initialize b
      super b
      @name = "收款账户"
      @url = "http://union.yihaodian.com/passport/setBankInfo.dohttp://union.yihaodian.com/passport/viewBankInfo.do"
      @elements=[]
    end
    
#Elements
    def account_span
      @b.span(:xpath=>"//div[@id='bankInfo']//ul/li[5]/span")
    end
 ####Actions
    def account_span_include? newaccount
      account_span.text.include? newaccount
    end
  end
end
