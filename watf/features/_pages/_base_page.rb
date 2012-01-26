module Pages
  class BasePage
    attr_accessor :name,:url,:browser,:elements

    def initialize browser
      @b = browser
    end

    def method_missing(sym, *args, &block)
      @b.send sym, *args, &block
    end

#Elements
    def val_province_btn
      @b.link(:id => 'p_1')
    end
    
    def  area_btn
      @b.link(:text => "切换省份")
    end
    
    def allCategoryHeader_btn
    @b.link(:id=>'allCategoryHeader')
    end
     ###  搜索页元素
    def search_keyword_input
      @b.text_field(:id =>'keyword')
    end

    
    def search_btn
      @b.button(:text,"搜索")
    end
    
    def search_hot_link
      @b.span(:id,"hotKeywordsShow").link(:index=>0)
    end
     
    def bottom_brand_div
      @b.div(:id => "bottomBrand")
    end 
     
    def account_desc_text
      @b.span(:id =>'user_name')
    end
  
#Actions

    def is_login?
      @b.span(:id =>"logout").exists? and @b.span(:id =>"logout").visible? 
    end

    def logout
      @b.goto "www.yihaodian.com/passport/logoff.do"
    end

    def include? msg
      @b.html.include? msg
    end

    def selfcheck 
      #check url
      begin
        @b.url.include?(@url).should == true
      rescue Exception => e
        ENV['WATF_ERROR_MSG'] +="browser url:#{@b.url}\nexpect url:#{@url}"
        raise e
      end
      #check elements exists
      @elements.each do |e|
        e.exists?.should == true
      end
      #check error words
      error_words = %w{freemarker FreeMarker\ error 系统繁忙 页面未找到 }
      error_words.each do |word|
        (@b.html.include?(word)).should_not == true
      end
      true
    end
    
    def wait_until_present
    
    end

    def open
      @b.goto @url
    end

    def clear_cookie
      @b.cookie.all.delete
    end

    def curr_province
      @b.span(:id,"currProvince").text
    end

   def select_area are
   area_btn.wait_until_present
     area_btn.click
     area1=@b.link(:text => are)
     area1.click
   end

   ####搜索页
    def search keyword
      search_keyword_input.set keyword
      search_btn.click
    end
    
    
    def click_search_hot
      search_hot_link.click
    end
    
  
    

  end
end
