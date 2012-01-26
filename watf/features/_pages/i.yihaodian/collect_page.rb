module Pages
  class CollectPage < BasePage
    def initialize b
      super b
      @name = "收藏夹"
      @url = "http://my.yihaodian.com/member/myCollection/myCollectionProduct.do"
      @elements=[check_frame_order]
    end
    
#Elements
  def check_page?
    #@b.div(:class=>"simplenav").exists?
     @b.div(:id=>"myYihaodianLeftMenu").exists?
  end
  
    def check_frame_order
       @b.div(:id =>'myYihaodianLeftMenu')
    end
   
   def collection
     @b.div(:id=>"collectionProductAll")
     #@b.div(:class=>"tab_tb")
   end
   
#Actions
  def wait_until_present
    collection.wait_until_present
  end
  
  def collection?
    collection.exists?
  end
  
  def check_product pid   
    #href=@b.link(:href=>"http://www.yihaodian.com/product/#{pid}_")
    href=@b.link(:href,/.\/\/*product\/#{pid}_/)
    href.exists?
  end
  
 end
end