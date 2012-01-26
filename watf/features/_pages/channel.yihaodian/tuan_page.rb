module Pages
  class TuanPage < BasePage
    def initialize b
      super b
      @name = "1号团"
      @url = "http://www.yihaodian.com/tuangou/index.do"
      @elements = [search_hot_link]
    end
   
   
#专栏
  
  def check_page?
    div=@b.div(:id=>'sidebarleftv3')
    div.exists?
  end
    
  
  end
end