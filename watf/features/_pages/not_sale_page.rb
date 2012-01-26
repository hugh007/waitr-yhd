module Pages
  class NewPage < BasePage
    def initialize b
      super b
      @name = "产品页"
      @url = "http://www.yihaodian.com/product/detail.do?productID=3338&merchantID=8"
    end
    
    def sorry_word
      @b.div(:id=>"main404")
     end
#actions
   def sorry_word?
   	   sorry_word.exists?
   end
    
  end
end