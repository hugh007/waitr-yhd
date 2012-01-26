module Pages
  class YwHomePage < BasePage
    def initialize b
      super b
      @name = "Ò©ÍøÊ×Ò³"
      @url = "www.111.com.cn/"
    end
    
    #Elements
    def  first_banner_link
      b.link(:xpath =>"div[id('first_banner_slider')]/div/div[1]/a/img")
    end
     
    def all_product_click name
      @b.link(:text,/#{name}/).click
    end 
 

    def all_product
      @b.link(:href=>"http://www.yihaodian.com/product/listAll.do").click 
    end
            
   #Actions
   
     #####ÇÐ»»µØÇø
 ##  def  click_area
   #  area_btn.wait_until_present
    # area_btn.click
    #end
    
   #def select_area are
    # area1=@b.link(:text => are)
    
    # area1.click
   #end

   def check_src_img? img1,img2
        #div=b.link(:xpath =>"div[id('first_banner_slider')]/div/div[1]/a/img")
        img==img2 
       
   end
  
   
  end
end