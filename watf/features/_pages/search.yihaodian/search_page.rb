module Pages
  class SearchPage < BasePage
    def initialize b
      super b
      @name ="搜索页"
      @url ="http://search.yihaodian.com/s/"
      @elements =[]
    end

    def cate_navi_links
      @b.links :xpath,"//div[@id='categoriescon']//a[contains(@href,'/s/c')]"
    end

    def search_product_links
      @b.links :xpath,"//div[@id='productcolumncon']//a[contains(@id,'pdlink2') and contains(@href,'www.yihaodian.com/product/')]"
    end

    def select_category name
      @b.link(:xpath,"//div[@id='categorieslist']//a[text()='#{name}']").click
    end

    def brand_filter_link brand
      @b.ul(:id,"FacetBrands").link(:text,/#{brand}/)
    end

    def filter_link filter_name
      @b.link(:xpath,"//div[@id='propertiescon']//a[contains(text(),'#{filter_name}')]")
    end

    def filter_low_price_input
      @b.text_field(:id,"searchPriceRangeMin")
    end

    def filter_high_price_input
      @b.text_field(:id,"searchPriceRangeMax")
    end

    def filter_price_commit_btn
      @b.div(:id,"propertiescon").button(:class,"submitbtn")
    end
    
    #Action

#check method
    def is_result_top_navi_include? name
      @b.link(:xpath,"//div[@class='resultcon']//a[text()='#{name}')]")
    end

    def check_search?  title
        div=@b.link(:xpath => "//div[@id='productcolumncon']//a[contains(@title,'#{title}')]")
        div.exists?
    end   

    def result_all_contain? title
      !@b.link(:xpath ,"//div[@id='productcolumncon']//a[contains(@id,'pdlink2') and not(contains(@title,'#{title}'))]").exists?
    end

    def result_all_in_price_range? lowprice,highprice
      prices = @b.spans(:class,"proprice")
      prices = prices.map{|price|
        price.text
      }
      prices.map!{|pstr|
        m = /[\d.]+/.match pstr
        if m.nil? then
          nil
        else
          m[0].to_f
        end
      }
      prices.reject!{|price|
        price >= lowprice.to_f && price <= highprice.to_f
      }
      prices.size == 0
    end

   # 搜索页价格
    def open_pid pid
    	@b.goto @url+pid
    end

    def open
      @b.goto 'http://search.yihaodian.com/s/c0-k'
    end
    
    def check_buybutton_refresh? pid
      @b.div(:id =>"buyButton_#{pid}").text.include? "立即购买"
    end
   
    def selfcheck
      super
      cate_navi_links.size.should > 0
      search_product_links.size.should > 0
    end
  
  end
end
