module Pages
  class ZhangShangPage < BasePage
    def initialize b
      super b
      @name = "掌上1号店"
      @url = "http://www.yihaodian.com/cms/view.do?topicId=13483"
      @element = []
    end
   
   
#专栏
  
  def check_page?
    div=@b.div(:id=>"container")
    div.exists?
  end
    
  
  end
end