module Pages
  class InvitefriendPage < BasePage
    def initialize b
      super b
      @name = "邀请好友页"
      @url = "http://my.yihaodian.com/friend/invite.do"
      @elements=[check_page_elements]
    end
    
#Elements
  def check_page_elements
    @b.div(:class=>"invitebuddy pt20")
  end
  
  def check_page?
    @b.div(:class=>"invitebuddy pt20").exists?
  end
  
  def send_button
    @b.button(:id=>"copyUrl")
  end
  
#Actions
  def send_button_exists?
    @b.send_button.exists?
  end
  
 end
end