//
//  ASNetStockInfo.h
//  WEB
//
//  Created by WangM on 12-11-20.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASNetStockCurrentInfo : UIView<UIWebViewDelegate>
{
    UIWebView * m_webView;
    NSString * m_strMinString;
}

-(id)init;
-(void) StartNetStockInfoOfMinute : (NSString *)aStringStockCode;
-(NSString *)FormatUrlString:(NSString *)aStringStockCode;
-(void)WebViewFresh;

@end
