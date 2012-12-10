//
//  ASUpDemoViewController.h
//  UpDemo
//
//  Created by WangM on 12-11-23.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASStockPanelView.h"
#import "ASNetStockCurrentInfo.h"
#import "ASChangeableStockInfo.h"

@interface ASStockPanelController : UIViewController
{
    ASStockPanelView * m_showDataView;
    ASNetStockCurrentInfo * m_currentStockInfo;
    ASChangeableStockInfo * m_changeableStockInfo;
    NSString * m_strCurrentStockCode;
    UIImageView * m_imageViewBackground;
}

-(id)init:(UIImageView *)aImageViewBackground;
-(void)ChangeStockCode:(NSString*)aStockCode;
-(void)CurrentViewFresh;



@end
