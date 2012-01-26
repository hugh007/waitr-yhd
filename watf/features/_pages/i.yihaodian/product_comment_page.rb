module Pages
  class CommentPage < BasePage
    def initialize b
      super b
      @name = "我的1号店-评论商品"
      @url = "http://my.yihaodian.com/member/exp/comment.do"
      @elements=[check_page_elements]
    end

#Elements
 
#Actions
    def check_page_elements
      @b.div(:class=>"estimate")
    end
    
    def check_page?
      @b.div(:class=>"estimate").exists?
    end
    
    def cancel_reason_select
      @b.select(:id => "cancelReason")
    end

    def cancel_reason_ok_btn
      @b.button(:id => "confirmItemOrder")
    end
    
    def check_select_order
      @b.div(:xpath =>"//div[id('myOrderList')]//div[@class='or_info']")
    end
   
    def check_frame_order
       @b.div(:id =>'myYihaodianLeftMenu')
    end
    
#Actions
    def wait_until_present
      @b.div(:class =>"orderlist").wait_until_present
    end
    def confirm_cancel
      cancel_reason_select.select_value '1520_5980'
      cancel_reason_ok_btn.click
    end
    def cancel_order code
      @b.button(:xpath,"//div[p/a[contains(@href,'orderDetail.do') and text()='#{code}']]/button[contains(@class,'cancel')]").click
      confirm_cancel
    end
    
    def cancel_recent_order
      @b.button(:xpath => "//div[p/a[contains(@href,'orderDetail.do') ]]/button[contains(@class,'cancel')]",:index => 0).click
      confirm_cancel

    end

#    def is_recent_order_canceled?
#      btn=@b.button(:xpath => "//div[p/a[contains(@href,'orderDetail.do') ]]/button[contains(@class,'cancel')]",:index => 0)
#      !btn.exists?
# 
#    end
     def check
        selfcheck
      end

  end
end
