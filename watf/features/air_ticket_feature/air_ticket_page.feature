# language:zh-CN

##分为线上测试和线下测试

功能:为了能快速有效订购机票
   作为一名访客
   我希望通过多种途径快速进入机票系统

@regression   
@YFNV001(1)
   场景:从所有商品分类列表进入(线上)
     假如 我进入首页
     当   我点击左侧机票链接
     那么 我应该成功进入生活服务频道
     当   我点击进入机票频道链接
     那么 我应该成功进入机票系统

@YFNV001(2)     
   场景:从免费注册下面的查询机票按钮进入（线上）
     假如 我进入首页
     当   我点击查询机票按钮
     那么 我应该成功进入机票系统

@regression     
@YFNV001(3)
   场景:从生活服务里面进入（线上）
     假如 我已经进入线上生活服务频道
     当   我点击进入机票频道链接
     那么 我应该成功进入机票系统

@regression          
@YFNV001(4)
   场景:从生活服务里面进入（线下）
     假如 我进入首页
     当   我点击生活服务按钮
     那么 我应该正确进入生活服务频道页
     当   我点击进入机票频道链接
     那么 我应该成功进入机票系统