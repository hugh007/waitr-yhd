module Pages
  class CartPage < BasePage
    def initialize b
      super b
      @name = "购物车页"
      @url = "www.yihaodian.com/product/cart.do?action=view"
      @elements = [next_step_btn,ino_btn,clean_cart_btn]
    end

###  elements
    

    def next_step_btn
      #old_version
      #@b.button(:id,"button9")
      #new cart
      @b.button(:class =>"settlement")
    end

    #确认不参加促销活动
    def ino_btn
      @b.link(:class,"btn_out")
    end

    # 促销活动弹出框
    def pop_win_div
      @b.div(:id => 'yhd_pop_win')
    end

    def clean_cart_btn
      #old_version
      #@b.link(:class,"btn_clean")
      #new cart
      @b.link(:class => "btn_clean")
    end

###  Action
    def clean_cart
      clean_cart_btn.click if clean_cart_btn.exists? && clean_cart_btn.visible?
    end
    def check_product pid
      #span = @b.link(:xpath,"//div[@class='productname']/span/a[contains(@href,'#{pid}')]")
      span = @b.link(:href ,/product\/#{pid}_/)
      span.exists?
    end

    def skip_activities
      if pop_win_div.exists? && pop_win_div.visible?
         ino_btn.click
      end
    end

  end
end
