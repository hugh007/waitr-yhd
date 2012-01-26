module Pages
  class MobilebandPage < BasePage
    def initialize b
      super b
      @name = "手机绑定页"
      @url = "http://my.yihaodian.com/member/bind/bind.do"
      @elements=[check_page_elements]
    end
    
#Elements
 def check_page_elements
   @b.div(:class=>"mobile_bindbox bd_btm")
 end
 
  def check_page?
    @b.div(:class=>"mobile_bindbox bd_btm").exists?
  end

  end
end