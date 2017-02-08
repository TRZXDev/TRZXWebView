//
//  Target_TRZXWeb.m
//  TRZXWebViewController
//
//  Created by N年後 on 2017/2/8.
//  Copyright © 2017年 TRZX. All rights reserved.
//

#import "Target_TRZXWeb.h"
#import "AXWebViewController.h"

@implementation Target_TRZXWeb
- (UIViewController *)Action_WebViewController:(NSDictionary *)params{
    AXWebViewController *webVC = [[AXWebViewController alloc] initWithURL:params[@"webURL"]];
    webVC.navigationType = AXWebViewControllerNavigationToolItem;
    webVC.showsToolBar = YES;
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_9_0
    webVC.webView.allowsLinkPreview = YES;
#endif
    return webVC;
}

@end
