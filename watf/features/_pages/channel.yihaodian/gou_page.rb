module Pages
  class GouPage < BasePage
    def initialize b
      super b
      @name = "1页购"
      @url = "http://www.yihaodian.com/fastshopping/fastshop.do"
      @elements = [search_hot_link]
    end
   
   
#专栏
  
  def check_page?
    div=@b.div(:class=>'buy_today')
    div.exists?
  end
    
  
  end
end