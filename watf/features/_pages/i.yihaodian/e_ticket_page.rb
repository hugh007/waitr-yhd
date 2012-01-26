module Pages
  class EticketPage < BasePage
    def initialize b
      super b
      @name = "电子票券"
      @url = "http://my.yihaodian.com/piao/piao.do"
      @elements=[check_frame_order]
    end
    
#Elements
  def check_page?
    #@b.div(:class=>"simplenav").exists?
     @b.div(:id=>"myYihaodianLeftMenu").exists?
  end
  
    def check_frame_order
       @b.div(:id =>'myYihaodianLeftMenu')
    end
 
#Actions
 
 end
end