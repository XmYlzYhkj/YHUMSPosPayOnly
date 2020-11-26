# YHUMSPosPayOnly


1.    快速集成
集成iOS版APP综合支付SDK时，请先导入我们提供的综合支付.a包、微信.a包及相关附属文件。
 
添加微信.a包依赖库
 
如需添加云闪付添加libPaymentControl.a包依赖库
 
因为适配WKWebView，请确定云闪付版本为v3.3.14，版本信息可见UPPaymentControl.h文件
iOS9系统策略更新，限制了http协议的访问，需要在“info.plist”中将要使用的URL Schemes列为白名单，才可正常检查其他应用是否安装，因此需要在info.plist中添加LSApplicationQueriesSchemes并添加对应item。
添加微信白名单，需要加入weixinULAPI、weixin两个item
添加支付宝白名单，需要加入alipays一个item
添加云闪付白名单，需要加入uppaysdk、uppaywallet、uppayx1、uppayx2、uppayx3五个item


2.  支付回调


'''
- (BOOL)application:(UIApplication *)app
            openURL:(NSURL *)url
            options:(NSDictionary<NSString *,id> *)options{
    
    NSString *string =[url absoluteString];
    NSLog(@"%@",string);
    if ([string hasPrefix:@"unifyPayDemo://"])
    {
        return [UMSPPPayUnifyPayPlugin cloudPayHandleOpenURL:url];
    }
    else if ([string hasPrefix:@"qmfpppay://"])
    {
        [UMSPPPayUnifyPayPlugin aliMiniPayHandleOpenURL:url];
        return YES;
        
    }
    
    return [UMSPPPayUnifyPayPlugin handleOpenURL:url otherDelegate:[WeiChatOtherManager shareManager]];
}
'''
