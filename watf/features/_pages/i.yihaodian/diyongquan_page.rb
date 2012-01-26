module Pages
  class DiyongquanPage < BasePage
    def initialize b
      super b
      @name = "抵用券"
      @url = "http://my.yihaodian.com/coupon/displayCoupons.do"
      @elements=[check_frame_order]
    end
    
#Elements
    def check_frame_order
       @b.div(:id =>'myYihaodianLeftMenu')
    end
  
  def check_page?
    #@b.div(:class=>"simplenav").exists?
     @b.div(:id=>"myYihaodianLeftMenu").exists?
  end
  
  def not_use_link
    #@b.link(:xpath=>"div[@id='container']//div[@class='columnright']/ul/li[1]")
     @b.li(:class=>"on") 
  end
#Actions
    def not_use_link_exists?
      not_use_link.exists?
    end
    
    def have_use_link_exists?
      #@b.li(:xpath=>"div[@id='container']//div[@class='columnright']//ul[@class='ul_tab']//li[2]").exists?
      @b.link(:text,"已使用抵用券").exists?
    end
    
    def out_of_date_link_exists?
      @b.link(:text,"已过期抵用券").exists?
    end    
    
    def diyongquan_exists?
      @b.td(:xpath=>"//div[@id='voucherlist']/table/tbody/tr[2]/td[1]").exists?
    end
 end
end