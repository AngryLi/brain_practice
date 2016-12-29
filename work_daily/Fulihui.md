# 工作日报
### 2016-07-13
- 集成定位服务
- 抓取、分析并应用WiFi万能钥匙的《新闻》界面的数据。再次基础上尝试更改请求参数。
  - 新闻标题
  - 新闻列表图片
  - 新闻详情（加载HTML）
  - 导航栏tabs
  - 填充抓取的数据->导航tabs
  - **点击tabs跳转到详情未完成（除了"新闻"）**

### 2016-07-14
- 收尾WiFi万能钥匙工作 **完成**
  - 点击tabs跳转到详情未完成（除了"新闻"）
  - 完善新闻列表界面UI

### 2016-07-18 周一
- 修改登录注册流程
> 注册 -> 关注话题 -> 注册成功（系统消息） -> 登录成功（）
>
> 登录 -> 是否关注了话题 -> NO -> 关注话题（系统消息） -> 登录成功 : YES -> 登录成功
>
> 在关注话题成功代码块添加“系统消息” 和 “登录成功通知”，在“登录-Normal”时发送“登录成功通知”。
>
> 在Core监听“登录成功”并保存“UserId”已做自动登录的凭证。

### 2016-07-19 周二
- 抓取网易推荐数据
- 展示广告banner

### 2016-07-21 周四 => 2016-07-26 周二
- 请假

### 2016-07-27 周三
- 优化代码
- 适配引导页

### 2016-07-29 周五
#### 哇哈哈-福礼惠需求
- 个人中心
- 哈哈特工
- 卡券

### 2016-08-01 周一
- 上午参加哇哈哈福礼惠技术讨论会
- 下午调研`Cordova`的可行性

### 2016-08-02 周二
- 在昨天的基础之上继续学习`Cordova`
- 开发一个简单的`Cordova`插件
- 需求变更
- 分配任务
  - LBS
  - 关于我们

### 2016-08-03 周三
- 上午参加需求会议，调研微信提现功能
- 下午集成本地html文件、LBS服务

### 2016-08-04 周四
- 上午研究html和Native交互

### 2016-08-05 周五
- 参加需求讨论会
- 根据1.0版本原型进行开发（设置）

### 2016-08-08 周一
- 上午和下午分别参加了产品需求会。
- 前端要求继续使用"插件"形式，所以继续研究Cordova插件机制，并且要把普通的JS代码包装策划哪个AngularJS可调用的API。
- 晚上的日报被批评了，以后写日报要认真并且写完后要检查。

### 2016-08-09 周二
- 研究学习AngularJS相应模块的语法知识。
- 普通JS接口包装成AngularJS接口
  1. 创建一个不知名的module
  - 包装接口
  - 将上面那个不知名的module注册到一个更大的`ngCordova.plugins`中
- 整合Cordova
- 添加icon
- 修改displayName
- 优化定位界面

### 2016-08-11 周四
- Leader安排：相关开发人员请 在每天下班前 发送日报，包含： 1）今天完成了什么 2）明天计划做什么 3）进度情况：正常、有多少延误、 4）遇到的问题和需求帮助  （如果有就写）

- 关于我们
- 设置界面
- 完善LBS

### 2016-08-12 周五
- 外部html调用本地plugin
  - [phonegap或者cordova的插件调用是否只可以使用本地的html文件,能否使用远端的html文件来调用插件？](http://www.oschina.net/question/778987_163667)
  - [cordova for android远程js代码调用java代码](http://blog.wizchen.com/2016/03/08/cordova-for-android%E8%BF%9C%E7%A8%8Bjs%E4%BB%A3%E7%A0%81%E8%B0%83%E7%94%A8java%E4%BB%A3%E7%A0%81/)
- Native的任务
  - 是否登录
  - 唤起"登录界面"
  - 获取用户地址

### 2016-08-16 周二
- 研究外部链接加载本地JS文件的方法:后来的解决方案是把本地JS文件写入到Cache中，具体看这里
  - [iOS UIWebView URL拦截](http://www.cocoachina.com/ios/20150626/12161.html?utm_source=tuicool)
  - [ios网络学习------4 UIWebView的加载本地数据的三种方式](http://blog.csdn.net/huang2009303513/article/details/35210425)
  - [ios webview清除缓存](http://blog.csdn.net/zhaoweixing1989/article/details/13021571)
- 中午分配剩下的任务
- 下午根据"测分"优化LBS

### 2016-08-22 周一
- 新报bug：19
- 修复bug：16个
- 关闭bug：7个
- 今天主要在LBS和个人中心修复相关的bug。
- 暂时没有风险出现。

### 2016-08-23 周二

### 2016-08-24 周三
- 解决webView reload时插件没有再次注入的问题：**手动重新加载注入请求(reload几次之后无法再次唤起H5的注入请求了，还不知道为什么)**
  - http://webapp.fulihui.org/cordova.js
  - http://webapp.fulihui.org/cordova_plugins.js
  - http://webapp.fulihui.org/plugins/fulihui/www/flhplugins.js

### 2016-08-26 周五
- 发布版本测试
  - 微信绑定

whhfulihui://com.fulihui/activity/detail?activityId=1
whhfulihui://com.fulihui/activity/seckill?selectTab=1

领取福铺优惠券

// oss上传图片路径
http://userflh.oss-cn-shanghai.aliyuncs.com/FLHApp/headImage/497169599604858881480902235243.jpg

### 2016-12-07 周三
- 上午
  - 优化flh分支代码，发现一个致命的bug：点击任一输入框，都会造成CPU飙升到95%+，真个应用处于假死状态。
  - 经过排查，发现是用swift语法的extension添加了UIView的viewController方法造成的，这个方法和IQKeyboardManager库中的方法重名，不知道什么原因造成了循环引用。

- 优化代码
  1、首页检查更新弹窗使用UIAlertController：详情见代码
  2、AppDelegate添加相应注释
  3、删除AppDelegate多余代码：检查更新
  4、AppDelegate新通知弹窗使用UIAlertController

- 首页UIApplicationDidBecomeActiveNotification使用RAC
- 整理通知处理代码
- 删除NativeHome冗余代码
- 添加 kMainViewShow 通知
- 修改 网络状态 回调参数
- 迁移openurl代码

**停止不经回归的代码重构！！！**

### 2016-12-12 周一
1. 限时特卖优化PRDv1.1
- 16、商品购买页面，进入订单流程，下面的显示为“娃哈哈福礼惠，优惠购”
- 17、表述不清楚：“满足最低额的优惠券”是什么，已经找不到满足条件的优惠券了，怎么还说 满足最低额 

### 2016-12-14 周三
- Functional Swift ✅
- 问题
  - ReactiveSwift pod安装编译不通过 **不知道为什么，重新install就好了** ✅

