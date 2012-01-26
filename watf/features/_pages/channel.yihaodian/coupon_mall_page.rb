module Pages
  class CouponMallPage < BasePage
    def initialize b
      super b
      @name = "积分兑换"
      @url = "http://www.yihaodian.com/point2/pointIndex.do"
      @elements = [score]
    end
    
   #积分
 
    def score 
       @b.link(:xpath =>"//div[id('container')]//a",:index =>0)
    end
  
  
   def check_score? 
     #click_score.wait_until_present
      score.exists?
   end
  
  
  def order
     @b.goto "http://www.yihaodian.com/usermanager/order/myOrder.do"
  end
  
  
  def check_order?
     div=@b.div(:id =>'doneOrder')
     div.exists?
  end
  
  def check_page?
    div=@b.div(:id=>'main')
    div.exists?
  end
     
  
  end
end
