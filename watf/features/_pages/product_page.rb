module Pages
  class ProductPage < BasePage
    def initialize b
      super b
      @name = "产品详细页"
      @url = "www.yihaodian.com/product/"
    end

#elements
    def amount_input
      @b.text_field(:name => "product_amount")
    end

    def buy_btn
      @b.button(:id => "doPurchaseBtn")
    end
    
    def store_link
     # @b.link(:text=>"收藏")
      @b.link(:id=>"addFavorite")
    end
    
    def ser_buy_btn
      @b.button(:id => "seriesCartButton")
    end

    def ser_amount_input
      @b.text_field(:id => "amount")
    end

    def add_cart_div
      @b.div(:id => "addCartWin")
    end
   
    ##已售完按钮
    def out_of_stock_button
      @b.button(:id=>"doPurchaseBtn",:value=>"已售完")
    end
    
    def check_swbutton_refresh?
      #@b.button(:id=>"doPurchaseBtn").text.include? "已售完"
      @b.button(:xpath=>"//")
    end
    
    ##商品价格
    def product_price
      @b.span(:id=>"nonMemberPrice")
    end
    
    ##降价通知
    def down_price_link
      @b.link(:id=>"btnNotice")
    end
    
    def sorry_word
      #@b.p(:class=>"sorry sorryMt")
      @b.div(:id=>"main404")
     end
     
     def add_cart_windows
       @b.div(:id=>"addCartWin")
     end
     
######弹层提示(购买数量  继续购物  去结算)     
     def add_amount
       @b.link(:xpath,"//div[@id='addCartWin']//div[@class='spopro']//div[@class='spopbox']//span[1]/b")
     end
     
     def continue_shopping_link
       @b.link(:xpath,"//div[@id='addCartWin']//div[@class='spopro']//div[@class='spopbox']//div[@class='spopbtn']/a[text()='继续购物']")
     end

     def goto_account_link
       @b.link(:xpath,"//div[@id='addCartWin']//div[@class='spopro']//div[@class='spopbox']//div[@class='spopbtn']/a[text()='去结算']")
     end

####我要评价
     def comment_button
       @b.button(:id=>"submitExperience")
     end 
     
     def comment_windows
       @b.div(:id,'yhd_pop_win')
     end    
###已收藏弹层
    def have_collect_windows?
      div=@b.div(:xpath=>"//div[@id='yhd_pop_win']//div[@class='aptab']//div[@class='aptab_center']")
      div.exists?
    end  
    
####我要提问
    def ask_link
      #@page.link(:id=>"iqa")
      @page.span(:class=>"//div[@class='buyer_experience']//div[@class='pricesort']//ul//li[@class='fr']/span")
    end
    
    def ask_windows?
      div=@b.div(:id=>"p_question")
      div.exists?
    end
####Actions
   def sorry_word?
   	   @b.sorry_word.exists?
   end
   
    def out_stock_disabled?
      @b.out_of_stock_button.disabled?
    end
    
    def is_check? name
      @b.link(:text,/#{name}/).exists?
    end
    
    def open pid
     @b.goto @url + pid
    end

    def is_serial?
      @b.div(:id,"selectedSeries").exists?
    end

    def add_to_cart pid,amount
      open pid
      #buy_btn.wait_until_present
      if is_serial?
        ser_amount_input.set amount
        ser_buy_btn.click
      else
        amount_input.set amount
        buy_btn.click
      end
      add_cart_div.wait_until_present
    end

   # def add_to_favorite pid
    #  open pid

####点击加入购物车判断弹层      
    def is_cart_windows_visible?
       add_cart_windows.exists? && add_cart_windows.visible?
     end 
      
    def add_amount_right? amount
     if add_cart_windows.exists? && add_cart_windows.visible? then
      num=add_amount.text()
      puts num
      num=num.to_i
      puts num
      (num=amount).should be_true
     end
    end
      
    def is_continue_shopping_exists?
       continue_shopping_link.exists? && goto_account_link.exists?
    end
####点击我要评论判断弹窗
    def comment_windows_exists?
      comment_windows.exists?
    end
             
  end
end
