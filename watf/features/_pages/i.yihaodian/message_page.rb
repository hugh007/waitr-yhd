module Pages
  class MessagePage < BasePage
    def initialize b
      super b
      @name = "我的消息"
      @url = "http://my.yihaodian.com/message/myMessage.do"
      @elements=[check_page_elements]
    end
    
#Elements
  def check_page_elements
    @b.div(:class=>"listtool list_head")
  end
  
  def check_page?
    @b.div(:class=>"listtool list_head").exists?
  end

  end
end