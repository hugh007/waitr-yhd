module Pages
  class MoneyAccountPage < BasePage
    def initialize b
      super b
      @name = "收款账户"
      @url = "http://union.yihaodian.com/passport/viewBankInfo.do"
      @elements=[]
    end
    
#Elements
    def change_account
      @b.button(:value=>"修改账户")
    end
    
    def old_account
      @b.text_field(:id=>"user.bankAccount")
    end
    
    def save_button
      @b.button(:value=>"保存")
    end
 ####Actions
    def set_account newaccount
      old_account.set newaccount
      save_button.click
    end
    
  end
end
