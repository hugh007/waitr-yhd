module Pages
  class GiftcardPage < BasePage
    def initialize b
      super b
      @name = "礼品页"
      @url = "http://my.yihaodian.com/giftcard/displayGiftCardAddMoney.do"
      @elements=[check_page_elements]
    end
    
#Elements
 def check_page_elements
   @b.div(:class=>"tab_tb")
 end
 
  def check_page?
    @b.div(:class=>"tab_tb").exists?
  end

  end
end