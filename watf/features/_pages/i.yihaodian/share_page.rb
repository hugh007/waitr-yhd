module Pages
  class SharePage < BasePage
    def initialize b
      super b
      @name = "一键分享"
      @url = "http://my.yihaodian.com/member/share/shareSet.do"
      @elements=[check_page_elements]
    end
    
#Elements
  def check_page_elements
    @b.div(:class=>"sharebox flow")
  end
  
  def check_page?
    @b.div(:class=>"sharebox flow").exists?
  end

  end
end