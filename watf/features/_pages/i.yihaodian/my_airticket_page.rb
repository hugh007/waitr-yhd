module Pages
  class MyAirticketPage < BasePage
    def initialize b
      super b
      @name = "我的1号店-我的机票"
      @url = "http://my.yihaodian.com/airTicket/airTicket.do"
      @elements=[check_frame_order,check_page_elements]
    end

#Elements
    def check_frame_order
       @b.div(:id =>'myYihaodianLeftMenu')
    end
  
   def check_page_elements
      @b.div(:class=>"columnright")
    end
 
    def check_page?
      #@b.div(:id=>"myYihaodianLeftMenu").exists?
      @b.div(:class=>"columnright").exists?
    end
    
    def check_ensure_button?
      @b.button(:id=>"jumptopage").exists?
    end
      
    def editinfo
    	@b.link(:href=>"http://my.yihaodian.com/member/userinfo/editinfo.do")
    end
    
    def address
      @b.link(:href=>"http://my.yihaodian.com/member/address/addressBook.do")
    end
    
    def modify_button
      @b.button(:class=>"y44")
    end
    
    def buy_airticket_link
      #@b.link(:href=>"http://jipiao.yihaodian.com")
      #@b.link(:text=>"我要买机票")
      @b.a(:xpath=>"//form[@id='queryOrderForm']//div//div[@class='columnright']/a[@text='我要买机票']")
    end
#Actions
    def username_input username
      @b.text_field(:name,/goodReceiverName/).set username
    end
    
    def address_input address
      @b.text_field(:name,/address1/).set username
    end
    
    def province_input
      @b.select_list(:name,"goodReceiver.province.id").select("1")
    end
    
    def address_input 
       @b.text_field(:name=>"goodReceiver.address1")
     end
     
     def email_input
       @b.text_field(:name=>"goodReceiver.email")
     end
     
     def tel_input
       @b.text_field(:name=>"goodReceiver.mobil")
     end
      
   # def name_input username
    #  username_input.set username
   # end
    
    
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

    def ticket_order_link_exists?
      #@b.li(:class=>"on").exists?
      link=@b.li(:xpath=>"//form[@id='queryOrderForm']/div/div/ul/li[1]")
      link.exists?
    end    

    def people_link_exists?
      @b.link(:text=>"常用乘机人").exists?
    end    

    def maintain_link_exists?
      @b.link(:text,"联系信息维护").exists?
    end    

  end
end
