# language: zh-CN  
功能: 用户登录  
  为了能够浏览网站只对在线会员可见的那些内容  
  作为一名访客  
  我希望能够登录  

@regression
  场景: 用户登录功能  
    假如 我没有登录
    当 我进入<登录页>
    而且 我以<ttt2@my.com/hhhhhhhh>这个身份登录
    那么 我应该成功登录  

@regression
  场景大纲: 用户无效帐号登录
    假如 我没有登录
    当 我进入<登录页>
    而且 我以<<username>/<password>>这个身份登录
    那么 登录页面提示<<err_msg>>

    例子:  错误的例子
        | username       | password     |    err_msg                    |
        | ttt2@my.com    | hhhh1234     | 账号与密码不匹配|
        | tt1234@m.m     | 123123       | 账号不存在|

