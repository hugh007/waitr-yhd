module Pages
  class XxLifePage < BasePage
    def initialize b
      super b
      @name = "线下生活服务"
      @url = "http://lifejipiao.yihaodian.com/"
    end
   
   
   
   ####生活服务
    def goto_air_ticket
     # @b.link(:href=>"http://jipiao.yihaodian.com")
      #@b.link(:xpath,/.\/\/*[@id='container']\/div[1]\/div[1]\/a/)
      @b.link(:text=>"进入机票频道>>")
    end
 
    def lifeserve 
       @b.link(:xpath =>"//div[id('container')]//a",:index =>0)
    end
  
   def check_lifeserve? 
      lifeserve.exists?
   end
  
  
  
 # def check_order?
  
  #   div=@b.div(:id =>'container')
   #  div.exists?
  #end
  
  
  end
end