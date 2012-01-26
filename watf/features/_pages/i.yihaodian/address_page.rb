module Pages
  class AddressPage < BasePage
    def initialize b
      super b
      @name = "我的1号店-地址簿管理"
      @url = "http://my.yihaodian.com/member/address/addressBook.do"
      @elements=[check_frame_order]
    end

#Elements
    def editinfo
    	@b.link(:href=>"http://my.yihaodian.com/member/userinfo/editinfo.do")
    end
    
    def address
      @b.link(:href=>"http://my.yihaodian.com/member/address/addressBook.do")
    end
    
    def modify_button
      @b.button(:xpath=>"//li[@id='address_list_li_0']/span/button[1]")
    end
    
    def modify_win
      @b.li(:id=>"address_edit_li_0")
    end
    
    def email_input
     # @b.text_field(:xpath=>"//li[@id='address_edit_li_0']/form/li[5]/input")
     @b.text_field(:name=>"goodReceiver.email")
    end
    
    def mobile_input
     @b.text_field(:name=>"goodReceiver.mobil")
   end
    
    def tel_input
      @b.text_field(:name=>"goodReceiver.phone2")
    end
    
    def save_button
      @b.button(:text=>"保存")
    end
    
    def windows_msg
      @b.div(:id=>"yhd_pop_win")
    end
    
    def msg_box
      @b.p(:xpath=>"//div[@id='yhd_pop_win']//div[@class='aptab']//div[@class='aptab_center']/p")
    end
    
    def pop_win_ok_btn
      @b.button(:id=>"pop_win_ok_btn")
    end
    
    def close_pop_win
      #@b.link(:xpath=>"//div[@id='yhd_pop_win']//div[@class='aptab']//div[@class='aptab']//div[@class='aptab_center']/ul/li[3]/a")
       @b.link(:text=>"关闭")
    end
    
    def address_info_text
      @b.li(:id=>"address_list_li_0").text
    end
#Actions
    def check_frame_order
       @b.div(:id =>'myYihaodianLeftMenu')
    end
    
     def check_page?
       @b.div(:class=>"columnright")
     end
     
     def modify_win_visible?
       modify_win.exists? && modify_win.visible?
     end

    def windows_msg? msg
      if windows_msg.exists? && windows_msg.visible?  then
        msg_box.text.include?msg
      end
    end
    
    def address_info_include?
      address_info_text.include?"13411111111"
    end
  end
end
