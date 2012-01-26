module Pages
  class EditinfoPage < BasePage
    def initialize b
      super b
      @name = "我的1好店-编辑个人资料"
      @url = "http://my.yihaodian.com/member/userinfo/editinfo.do"
      @elements=[check_page_elements]
    end

#Elements
    def people_image
      @b.image(:id=>"userface")
    end
    
    def edit_image
    	@b.a(:text=>"编辑头像")
    end
   
   def image_windows
     @b.div(:xpath=>"//div[@id='editp']")
   end
   
    def first_people_image
    	@b.image(:xpath=>"//div[@id='editp']//dl//dd/a[1]/img")
    end
    
    def save_image_button
    	@b.button(:xpath=>"//div[@id='editp']/button")
    	#@b.button(:text,'保存头像')
    end
    
    def save_info_button
    	#@b.div(:class=>"btnarea").button(:text=>"保存信息")
    	#@b.link(:xpath,"div[@class='btnarea']/button")
    	@b.div(:class=>"columnright")
    end
    
    def check_page_elements
      @b.image(:id=>"userface")
    end
    
 #Actions
     def check_page?
       @b.image(:id=>"userface").exists?
     end
     
     def image_windows?
       image_windows.exists? && image_windows.visible?
     end
     
     def chose_image
       if image_windows.exists? && image_windows.visible? then
         first_people_image.click
         save_image_button.click
       end
     end
     
     def check_image_right?
       #puts people_image.src
       people_image.src.include?"peopleicon_01.gif"
     end
     
  end
end
