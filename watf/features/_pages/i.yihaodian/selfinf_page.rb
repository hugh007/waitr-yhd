module Pages
  class MyInformationPage < BasePage
    def initialize b
      super b
      @name = "我的1号店"
      @url = "http://my.yihaodian.com/member/my.do"
      @elements=[]
    end

#Elements
    def myorder_link
     # @b.link(:href=>"http://www.yihaodian.com/usermanager/order/myOrder.do")
      @b.link(:xpath=>"//div[@id='myYihaodianLeftMenu']//a[text()='我的订单']")
    end
    
    def collect_link
      #@b.link(:text=>"我的收藏夹")
      @b.link(:xpath=>"//div[@id='myYihaodianLeftMenu']//a[text()='我的收藏夹']")
    end
    
    def tuangou_link
      @b.link(:text=>"我的团购")
    end
    
    def chongzhi_link
      @b.link(:text=>"我的手机充值")
    end

    def air_ticket_link
      	@b.link(:xpath=>"//div[@id='myYihaodianLeftMenu']//a[text()='我的机票']")
    end 
    
    def e_ticket_link
      @b.link(:text=>"我的电子票券")
    end

    def product_comment_link
      @b.link(:href=>"http://my.yihaodian.com/member/exp/comment.do")
    end
  
    def account_search_link
      @b.link(:text=>"帐户查询")
    end

    def jifen_link
      @b.link(:text=>"积分查询与兑换")
    end
    
    def gift_card_link
      @b.link(:href=>"http://my.yihaodian.com/giftcard/displayGiftCardAddMoney.do")
    end
 
    def diyong_link
    	@b.link(:xpath=>"//div[@id='myYihaodianLeftMenu']//a[text()='我的抵用券']")
    end
 
    def one_key_share_link
      @b.link(:href=>"http://my.yihaodian.com/member/share/shareSet.do")
    end
 
    def message_link
      @b.link(:href=>"http://my.yihaodian.com/message/myMessage.do")
    end
                     
    def editinfo
    	@b.link(:text=>"编辑个人资料")
    end

    def changepw_link
      @b.link(:href=>"http://my.yihaodian.com/member/userinfo/changepw.do")
    end 
      
    def mobile_band_link
      @b.link(:href=>"http://my.yihaodian.com/member/bind/bind.do")
    end
       
    def address
      @b.link(:href=>"http://my.yihaodian.com/member/address/addressBook.do")
    end
       
    def invite_friend_link
      @b.link(:href=>"http://my.yihaodian.com/friend/invite.do")
    end 
    
    def check_frame_order
       @b.div(:id =>"myYihaodianLeftMenu")
    end
    
    def check_frame_userinfo
      @b.div(:class=>"userinfo")
    end

    def myinfo_pop_div
      @b.div(:id,"yhd_pop_win")
    end

    def myinfo_pop_close_link
      @b.link(:xpath,"//div[@id='yhd_pop_win']//a[text()='关闭']")
    end
    
    def latest_order_links
      @b.links :xpath=>"//div[@id='orderList']//a[contains(@href,'http://www.yihaodian.com/usermanager/order/orderDetail.do?')]"
      #@b.table(:xpath=>"//")
    end
#Actions

    def try_close_myinfo_form
      if myinfo_pop_div.exists? && myinfo_pop_div.visible? then
        myinfo_pop_close_link.click
      end
    end

    def latest_order_amount?
      puts latest_order_links.size
      latest_order_links.size.should ==5
    end
    

  end
end
