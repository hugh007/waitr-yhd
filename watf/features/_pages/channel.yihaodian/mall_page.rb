module Pages
  class MallPage < BasePage
    def initialize b
      super b
      @name = "1号商城"
      @url = "http://mall.yihaodian.com"
      @elements = [search_hot_link]
    end
   
   
#专栏
  
   def check_order?
    div=@b.div(:id =>'lazycenter')
     div.exists?
   end
  
  def check_page?
    div=@b.div(:class=>'clearfix')
    div.exists?
  end
    
  
  end
end