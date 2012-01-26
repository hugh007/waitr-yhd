# language: zh-CN  
功能: 购买不同种类的商品 
  检查添加各类商品到购物车是否成功，
  选择付款方式和送货地址后，成功下单。

  @checklist_tc @regression
  场景:  购买普通商品（上海）
    假如 我已经登录
    而且 我省份选择"上海"站
    而且 购物车里没有商品
    当 我购买类型为"sh_prds"(普通商品)的商品
    而且 我点击结算订单
    而且 选择默认的收货地址
    而且 选择默认的配送方式
    而且 选择付款方式为"网上支付,招商银行"
    而且 确认订单
    那么 应该提示下单成功
    而且 数据库中生成正确的订单
    当 我取消刚才的订单
    那么 最近的订单取消成功

  @checklist_tc @regression
  场景:  购买代售商品（上海）
    假如 我已经登录
    而且 我省份选择"上海"站
    而且 购物车里没有商品
    当 我购买类型为"alt_sh_prds"(代售商品)的商品
    而且 我点击结算订单
    而且 选择默认的收货地址
    而且 选择默认的配送方式
    而且 选择付款方式为"网上支付,招商银行"
    而且 确认订单
    那么 应该提示下单成功
    而且 数据库中生成正确的订单
    当 我取消刚才的订单
    那么 最近的订单取消成功

  @checklist_tc @regression
  场景:  购买店中店商品（上海）
    假如 我已经登录
    而且 我省份选择"上海"站
    而且 购物车里没有商品
    当 我购买类型为"sis_prds"(店中店商品)的商品
    而且 我点击结算订单
    而且 选择默认的收货地址
    而且 选择默认的配送方式
    而且 选择付款方式为"网上支付,招商银行"
    而且 确认订单
    那么 应该提示下单成功
    而且 数据库中生成正确的订单
    当 我取消刚才的订单
    那么 最近的订单取消成功

  @checklist_tc @regression
  场景:  购买系列商品（上海）
    假如 我已经登录
    而且 我省份选择"上海"站
    而且 购物车里没有商品
    当 我购买类型为"ser_prds"(系列商品)的商品
    而且 我点击结算订单
    而且 选择默认的收货地址
    而且 选择默认的配送方式
    而且 选择付款方式为"网上支付,招商银行"
    而且 确认订单
    那么 应该提示下单成功
    而且 数据库中生成正确的订单
    当 我取消刚才的订单
    那么 最近的订单取消成功

  @checklist_tc @regression
  场景:  购买组合商品（上海）
    假如 我已经登录
    而且 我省份选择"上海"站
    而且 购物车里没有商品
    当 我购买类型为"cb_sh_prds"(组合商品)的商品
    而且 我点击结算订单
    而且 选择默认的收货地址
    而且 选择默认的配送方式
    而且 选择付款方式为"网上支付,招商银行"
    而且 确认订单
    那么 应该提示下单成功
    而且 数据库中生成正确的订单
    当 我取消刚才的订单
    那么 最近的订单取消成功

  @checklist_tc @regression
  场景: 用货到付款支付
    假如 我已经登录
    而且 我省份选择"上海"站
    而且 购物车里没有商品
    当 我购买类型为"sh_prds"(普通商品)的商品
    而且 我点击结算订单
    而且 选择默认的收货地址
    而且 选择默认的配送方式
    而且 选择付款方式为"货到付款"
    而且 确认订单
    那么 应该提示下单成功
    而且 数据库中生成正确的订单
    当 我取消刚才的订单
    那么 最近的订单取消成功

  @checklist_tc @regression
  场景: 用货到刷卡支付
    假如 我已经登录
    而且 我省份选择"上海"站
    而且 购物车里没有商品
    当 我购买类型为"sh_prds"(普通商品)的商品
    而且 我点击结算订单
    而且 选择默认的收货地址
    而且 选择默认的配送方式
    而且 选择付款方式为"货到刷卡"
    而且 确认订单
    那么 应该提示下单成功
    而且 数据库中生成正确的订单
    当 我取消刚才的订单
    那么 最近的订单取消成功

  @checklist_tc @regression
  场景: 用银行转帐支付
    假如 我已经登录
    而且 我省份选择"上海"站
    而且 购物车里没有商品
    当 我购买类型为"sh_prds"(普通商品)的商品
    而且 我点击结算订单
    而且 选择默认的收货地址
    而且 选择默认的配送方式
    而且 选择付款方式为"银行转帐,建设银行"
    而且 确认订单
    那么 应该提示下单成功
    而且 数据库中生成正确的订单
    当 我取消刚才的订单
    那么 最近的订单取消成功

  场景: 用账户余额全额支付
    假如 我已经登录
    而且 我省份选择"上海"站
    而且 购物车里没有商品
    当 我购买类型为"sh_prds"(普通商品)的商品
    而且 我点击结算订单
    而且 选择默认的收货地址
    而且 选择默认的配送方式
    而且 选择付款方式为"货到付款"
    而且 使用账户余额支付全部金额,并记录下该金额
    那么 订单合计正确更新上步输入的账户抵扣金额,并总计金额正确
    当   确认订单
    那么 应该提示下单成功
    当   进入刚才所下订单的Detail页面
    那么 正确显示账户抵扣金额,并且总计金额正确
    当   我取消当前订单
    那么 抵扣金额应该返还当前账户
        

  场景: 用账户余额混合支付
    假如 我已经登录
    而且 我省份选择"上海"站
    而且 购物车里没有商品
    当 我购买类型为"sh_prds"(普通商品)的商品
    而且 我点击结算订单
    而且 选择默认的收货地址
    而且 选择默认的配送方式
    而且 选择付款方式为"货到付款"
    而且 使用账户余额支付一半金额,并记录下该金额
    那么 订单合计正确更新上步输入的账户抵扣金额,并总计金额正确
    当   确认订单
    那么 应该提示下单成功
    当   进入刚才所下订单的Detail页面
    那么 正确显示账户抵扣金额,并且总计金额正确
    当   我取消当前订单
    那么 抵扣金额应该返回当前账户
    
  场景: 账户余额确认
    假如 我已经登录
    而且 我省份选择"上海"站
    而且 购物车里没有商品
    当 我进入网站<我的一号店首页>
    而且 我记录下我的账户余额
    而且 我购买类型为"sh_prds"(普通商品)的商品
    而且 我点击结算订单
    而且 选择默认的收货地址
    而且 选择默认的配送方式
    而且 选择付款方式为"货到付款"
    那么 账户余额应该和我的一号店页面显示的一致
   
  场景: 账户余额使用(异常输入)

  场景: 团购商品下单
    假如 我已经登录
    而且 我省份选择"上海"站
    当 我进入网站<团购首页>
    而且 我选择进入第一个团购,并点击购买
    而且 假如是系列商品,则选择任意颜色尺码
    而且 选择默认收货地址
    而且 不使用账户支付此团购订单
    而且 选择网上支付<支付宝>
    而且 提交订单
    那么 页面跳转到支付页面
    而且 我的团购页面可以查询到该订单


  场景: 在北京地区下单

  场景: 在广州地区下单

  @regression
  场景:  添加商品到购物车
    假如 我已经登录
    而且 我省份选择"上海"站
    而且 购物车里没有商品
    当 我将下列商品添加到购物车:
        | product_id        | amount  |
        | 1016732           |   1     |
    那么 购物车里应该有商品:
        | product_id        | amount  |
        | 1016732           |   1     |

