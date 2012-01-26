module Pages
  class ChannelPage < BasePage
    def initialize b
      super b
      @name ="频道页"
      @url ="http://search.yihaodian.com/channel/"
    end

    
    def product_click name
      @b.link(:text,/#{name}/).click
    end
    
    def is_check? name
      @b.link(:text,/#{name}/).exists?
    end

    def check_search?  title
        div=@b.link(:title,/#{title}/)
        div.exists?
    end   

  end
end
