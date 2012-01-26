module Pages
  class YejiPage<BasePage
    def initialize b
      super b
      @name = "实时业绩"
      @url = "http://union.yihaodian.com/performance/real_time_performance.do"
      @elements=[yeji_list]
    end

 #Elements
  def yeji_list
    @b.div(:class=>"subright")
  end
 
  end
end
