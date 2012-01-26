module Pages
   class DayNightPage<BasePage
     def initialize b
        super b
        @name="早市夜市"
        @url="http://www.yihaodian.com/product/daily/market.do"
        @elements=[search_hot_link]
      end
      
      def check_page?
        div=@b.div(:id=>'container')
        div.exists?
      end
      
    end
  end
        
        