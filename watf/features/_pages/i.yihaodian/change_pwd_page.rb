module Pages
  class ChangepwPage < BasePage
    def initialize b
      super b
      @name = "修改密码页"
      @url = "http://my.yihaodian.com/member/userinfo/changepw.do"
      @elements=[check_page_elements]
    end
    
#Elements
  def oldpassword_input
    #@b.text_field(:name=>"oldPass")
    @b.text_field(:xpath=>".//*[@id='container']/div[3]/form/div/ul/li[1]/input")
  end
  
  def newpassword_input
    @b.text_field(:name=>"newPass")
  end
  
  def passagain_input
    @b.text_field(:name=>"PassAgain")
  end
  
  def check_page_elements
    @b.div(:class=>"changepw")
  end
  
  def changepass_button
    @b.button(:text=>"修改密码")
  end
  
  def msg_box
    @b.p(:xpath=>".//*[@id='yhd_pop_win']/div/div[2]/p[1]")
  end
 ####Actions
 
  def check_page?
    @b.div(:class=>"changepw").exists?
  end
  
  def change_password  oldpass,newpass
    oldpassword_input.set oldpass
    newpassword_input.set newpass
    passagain_input.set newpass
    changepass_button.click
  end
  
  end
end
