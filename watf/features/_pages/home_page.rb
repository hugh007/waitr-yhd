module Pages
  class HomePage < BasePage
    def initialize b
      super b
      @name = "首页"
      @url = "www.yihaodian.com/"
    end
    
    #Elements
    def  first_banner_link
      b.link(:xpath =>"div[id('first_banner_slider')]/div/div[1]/a/img")
    end
     
    def all_product_btn
      @b.link(:href=>"http://www.yihaodian.com/product/listAll.do")
    end
       
     def air_ticket_left
       #@b.link(:xpath,/.\/\/*[@id='ap_listboxnew_11']\/div[2]\/div[1]\/div[1]\/div[1]\/span\/a/) 
       #@b.link(:title=>"机票车票,充值,健康")
       @b.link(:title=>"机票、充值、健康")    
     end
     
     def air_ticket_right
     	# @b.button(:id=>"queryFlight")
     	@b.button(:value=>"查询机票")
     end

    def brand_links
      @b.links(:xpath => "//p[@class='more_link']/a[contains(@href,'www.yihaodian.com/brand/')]")
    end
     
    def union_link
      @b.link(:href=>"http://union.yihaodian.com")
    end
           
   #Actions
   def all_product_click name
      @b.link(:text,/#{name}/).click
   end 
   

   def check_src_img? img1,img2
        img==img2 
   end
  
   def wait_until_present
     all_product_btn.wait_until_present
   end
   
  end
end
