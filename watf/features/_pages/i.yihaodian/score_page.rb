module Pages
  class ScorePage < BasePage
    def initialize b
      super b
      @name = "积分页"
      @url = "http://my.yihaodian.com/points/displayPointAccount.do"
      @elements=[check_page_elements]
    end
    
    #Elements
   def score 
       @b.link(:xpath =>"//div[id('container')]//a",:index =>0)
    end
   
   def check_page_elements
     @b.div(:class=>"account_box")
   end
   
   def point_type
     @b.select(:id=>"pointType")
   end
   
   def point_status
     @b.select(:id=>"pointStatus")
   end
   #Actions
   # 积分 与余额
   def point_type_exists?
     point_type.exists?
   end
   
   def point_status_exists?
    point_status.exists?
  end
  
  def point_type_input type_name
    point_type.select("#{type_name}")
  end
  
  def point_status_input status_name
    point_status.select("#{status_name}")
  end
  
   def check_score?
     #debugger
    t=@b.em(:xpath =>"//div[@id='container']//div[@class='account_box']/em[1]").text().to_i
    t>=0
   end
  
  def order
     @b.goto "http://www.yihaodian.com/usermanager/order/myOrder.do"
  end
  
  def check_page?
    div=@b.div(:class=>"account_box")
    div.exists?
  end
 # def check_order?
  #   div=@b.div(:id =>'doneOrder')
   #  div.exists?
  #end
   
  end
end
