module Pages
  class BrandPage < BasePage
    def initialize b
      super b
      @name = "品牌页"
      @url = "http://www.yihaodian.com/brand/"
      @elements = []
    end
    
    #Elements
    def cate_navi_links
      @b.links :xpath,"//div[@id='leftMenuDiv']/a[contains(@href,'search.yihaodian.com')]"
    end

    def br_hot_prod_links
      @b.links :xpath => "//div[@class='brHot']//a[contains(@href,'product')]"
    end

    def br_rank_prod_links
      @b.links :xpath => "//div[@class='brRank']//a[contains(@href,'product')]"
    end

    def br_content_prod_links
      @b.links :xpath => "//div[@class='brContent']//a[contains(@href,'product')]"
    end
            
   #Actions
  def selfcheck
    super
    cate_navi_links.size.should > 0
    (br_hot_prod_links.size+br_rank_prod_links.size).should > 0
    br_content_prod_links.size.should > 0
  end

  def open bid
    @b.goto @url + bid
  end

  
   
  end
end
