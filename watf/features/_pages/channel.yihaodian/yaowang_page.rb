module Pages
  class YaowangPage < BasePage
    def initialize b
      super b
      @name = "1号药网"
      @url = "http://www.111.com.cn"
      @elements = [search_hot_link]
    end
   
   
#专栏
  
  def check_page?
    div=@b.div(:class=>'hot_box')
    div.exists?
  end
    
  
  end
end