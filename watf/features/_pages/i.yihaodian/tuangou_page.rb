module Pages
  class TuangouPage < BasePage
    def initialize b
      super b
      @name = "我的团购页"
      @url = "http://www.yihaodian.com/tuangou/myGroupon.do"
      @elements=[check_frame_order,check_page_elements]
    end
    
#Elements
    def check_frame_order
       @b.div(:id =>'myYihaodianLeftMenu')
    end
  
   def check_page_elements
      @b.div(:class=>"columnright")
    end
    
  def check_page?
    @b.div(:class=>"columnright").exists?
  end
    
#Actions
  
 end
end