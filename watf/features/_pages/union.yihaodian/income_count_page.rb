module Pages
  class IncomePage<BasePage
    def initialize b
      super b
      @name = "收益结算"
      @url = "http://union.yihaodian.com/performance/viewTotal.do"
      @elements=[count_list]
    end

 #Elements
  def count_list
    @b.div(:class=>"order_search")
  end
 
  end
end
