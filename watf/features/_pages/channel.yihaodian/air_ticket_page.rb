module Pages
  class AirticketPage < BasePage
    def initialize b
      super b
      @name = "机票频道"
      #@url = "http://jipiao.yihaodian.com/"
      @url="http://jipiao.yihaodian.com/index.action"
      @elements=[]
    end
    
#Elements 
   def search_frame
     @b.div(:class=>"search-box")
   end
   
    def check_frame_order?
       #div=@b.div(:class=>"search-box")
       div=@b.div(:class=>"//*[@id='J_SearchTab']/div/div[2]")
       div.exists?
    end
  
#Actions
 end
end
