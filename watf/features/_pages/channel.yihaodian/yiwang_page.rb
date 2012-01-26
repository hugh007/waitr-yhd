module Pages
  class YiwangPage < BasePage
    def initialize b
      super b
      @name = "1号医网"
      @url = "http://www.yiwang.cn/"
      @elements = [search_hot_link]
    end
   
   
#专栏
  
  def check_page?
    div=@b.div(:class=>'hot_box')
    div.exists?
  end
    
  
  end
end