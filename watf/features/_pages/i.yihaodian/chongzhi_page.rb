module Pages
  class ChongzhiPage < BasePage
    def initialize b
      super b
      @name = "手机充值"
      @url = "http://www.yihaodian.com/chongzhi/myMobileCharge.do"
      @elements=[check_frame_order]
    end
    
#Elements
  def check_page?
    #@b.form(:id=>"queryOrderForm").exists?
    #@b.div(:class=>"tab_tb mt10").exists?
     @b.div(:id=>"myYihaodianLeftMenu").exists?
  end
  
    def check_frame_order
       @b.div(:id =>'myYihaodianLeftMenu')
    end
  
  
#Actions

 end
end