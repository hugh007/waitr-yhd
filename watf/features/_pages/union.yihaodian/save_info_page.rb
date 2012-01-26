module Pages
  class SaveinfoPage<BasePage
    def initialize b
      super b
      @name = "保存信息"
      @url = "http://union.yihaodian.com/passport/base_info_edit_save.do"
      @elements=[base_info_check]
    end

 #Elements
  def base_info_check
    @b.div(:id=>"baseInfo")
  end
  
  def change_info_button
    @b.button(:value=>"修改信息")
  end
  
  def name_input
    @b.text_field(:id=>"user.name")
  end
  
  def identitycard_input
    @b.text_field(:id=>"user.identityCard")
  end
  
  def tel_input
    @b.text_field(:id=>"user.mobile")
  end
 
  def address_input
    @b.text_field(:id=>"user.siteURl")
  end
  
  def type_input
    @b.select_list(:id=>"siteType")
  end
  
  def save_button
    @b.button(:value=>"保存信息")
  end
  
#Actions
  def new_info name,identity,tel,address
    name_input.set name
    identitycard_input.set identity
    tel_input.set tel
    address_input.set address
  end
  
  def check_change_info type_name
    save_button.text().include?"#{type_name}"
  end
  
  end
end
