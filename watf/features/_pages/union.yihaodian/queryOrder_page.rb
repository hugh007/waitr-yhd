module Pages
  class SearchOrderPage<BasePage
    def initialize b
      super b
      @name = "订单查询"
      @url = "http://union.yihaodian.com/performance/queryOrderInput.do"
      @elements=[order_list]
    end

 #Elements
  def order_list
    #@b.div(:class=>"subright")
    @b.div(:class=>"order_search")
  end
 
  end
end
