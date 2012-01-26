module Pages
  class SearchBrandPage < BasePage
    def initialize b
      super b
      @name ="搜索页"
      @url ="http://search.yihaodian.com/b/"
      @elements =[]
    end

#elements
    def cate_navi_links
      @b.links :xpath,"//div[contains(@class,'brList')]/a[contains(@href,'search.yihaodian.com')]"
    end

    def search_product_links
      @b.links :xpath,"//div[@id='productcontent']//a[contains(@href,'www.yihaodian.com/product/')]"
    end

#Actions
   
    def selfcheck
      super
      cate_navi_links.size.should > 0
      search_product_links.size.should > 0
    end
  
  end
end
