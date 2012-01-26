module Pages
  class RegisterPage < BasePage
    def initialize b
      super b
      @name = "注册页"
      @url = "http://www.yihaodian.com/passport/register_input.do"
      @elements = [email_input,name_input,password_input,password2_input,register_btn]
    end

    def email_input
      @b.text_field(:id =>'email')
    end
    
    def name_input
      @b.text_field(:id=>'name')
    end
    
    def password_input
      @b.text_field(:id => 'password')
    end
    
    def password2_input
      @b.text_field(:id => 'password2')
    end
  
    def yanzheng_input
      @b.text_field(:id=>'validCode')
    end
    
    def register_btn
      @b.button(:text,"提交注册")
    end

    def email_desc_text
      @b.span(:id =>"email_desc")
    end

    def name_desc_text
      @b.span(:id =>"name_desc")
    end

    def password_desc_text
      @b.span(:id =>"password_desc")
    end

    def password2_desc_text
      @b.span(:id =>"password2_desc")
    end

#Actions

    def login email,username,password,password2
      email_input.set email
      name_input.set username
      password_input.set password
      password2_input.set password2
      register_btn.click
    end
    
    def register_email email
      email_input.set email
    end
    
    def register_username username
      name_input.set username
    end
    
    def register_password password
      password_input.set password
    end
    
    def register_password2 password2
      password2_input.set password2
    end
    
    def register_yanzheng yanzheng
      yanzheng_input.set yanzheng
    end
 
  end
end
