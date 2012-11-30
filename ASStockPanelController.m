//
//  ASUpDemoViewController.m
//  UpDemo
//
//  Created by WangM on 12-11-23.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import "ASStockPanelController.h"

@interface ASStockPanelController ()

@end

@implementation ASStockPanelController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)init:(UIImageView *)aImageViewBackground
{
    self = [super init];
    if (self != nil) {
        m_imageViewBackground = aImageViewBackground;
        self.view.frame = aImageViewBackground.frame;
        m_strCurrentStockCode= [[NSString alloc] init];
        m_strCurrentStockCode = @"sh000001";
        
        m_currentStockInfo = [[ASNetStockCurrentInfo alloc]init];
        [m_currentStockInfo StartNetStockInfoOfMinute:m_strCurrentStockCode];
        
        m_imageViewBackground.backgroundColor = [UIColor blackColor];
        m_showDataView = [[ASStockPanelView alloc] init:m_imageViewBackground];
        
        m_changeableStockInfo = [[ASChangeableStockInfo alloc] init];
    }
    return self;
}

-(UIColor*)LabelColor:(double)dbTodayBeginPrice and:(double)dbYesterdayEndPrice
{
    UIColor * color = [[UIColor alloc] init];
    color = [UIColor greenColor];
    if (dbTodayBeginPrice > dbYesterdayEndPrice ) {
        color = [UIColor redColor];
    }
    
    if (dbTodayBeginPrice == dbYesterdayEndPrice) {
        color = [UIColor grayColor];
    }
    
    return color;
}

-(void) GetHtmlContent:(NSNotification *)notification
{
    NSDictionary *userInfo= [notification userInfo];
    //NSLog(@"观察者中的：%@",userInfo);
    
    
    NSString * strNetData = [userInfo objectForKey:@"HtmlContent"];
    //NSLog(@"%@",strNetData);
    
    NSArray  * array= [strNetData componentsSeparatedByString:@","];
    //NSLog(@"%@",array);
    
    if (array.count == 1) {
        return;
    }
    
    //NSString * strStockName = [[NSString alloc] initWithFormat:@"%@",[array objectAtIndex:0]];
    //NSLog(@"%@",strStockName);
    
    double dbTodayBeginPrice = [[array objectAtIndex:1] doubleValue];
    [m_changeableStockInfo SetTodayBeginPrice:dbTodayBeginPrice];
    [m_showDataView ShowTodayBeginPrice:dbTodayBeginPrice];
    
    double dbYesterdayEndPrice = [[array objectAtIndex:2] doubleValue];
    [m_changeableStockInfo SetYesterdayEndPrice:dbYesterdayEndPrice];
    [m_showDataView ShowYesterdayEndPrice:dbYesterdayEndPrice];
    
    UIColor * color = [self LabelColor:dbTodayBeginPrice and:dbYesterdayEndPrice];
    
    double dbIndex = [[array objectAtIndex:3] doubleValue];
    [m_changeableStockInfo SetIndex:dbIndex];
    [m_showDataView ShowIndex:dbIndex andIndexColor:color];
    
    double dbDoneDealPrice = [[array objectAtIndex:9] doubleValue]/100000000;
    [m_changeableStockInfo SetDoneDealPrice:dbDoneDealPrice];
    [m_showDataView ShowDoneDealPrice:dbDoneDealPrice];
    
    double dbTodayHighestPrice = [[array objectAtIndex:4] doubleValue];
    [m_changeableStockInfo SetTodayHighestPrice:dbTodayHighestPrice];
    [m_showDataView ShowTodayHighestPrice:dbTodayHighestPrice];
    
    double dbTodayLowestPrice = [[array objectAtIndex:5] doubleValue];
    [m_changeableStockInfo SetTodayHighestPrice:dbTodayLowestPrice];
    [m_showDataView ShowTodayLowestPrice:dbTodayLowestPrice];
    
    double dbDealNumber = [[array objectAtIndex:8] doubleValue]/10000;
    [m_showDataView ShowDealNumber:dbDealNumber];
    
    
    //没得到的
    [m_showDataView ShowAddOrSubPrice:-0.0 andAddOrSubPriceColor:color];
    [m_showDataView ShowAddOrSubRate:-0.0 andAddOrSubRateColor:color];
    
    [m_showDataView ShowSwingPercent:0.0];
    
    [m_showDataView ShowRiseNumber:0];
    [m_showDataView ShowSmoothNumber:0];
    [m_showDataView ShowFallNumber:0];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(GetHtmlContent:) name:@"GetHtmlContent" object:nil];
    
    [self.view addSubview:m_currentStockInfo];
    [self.view addSubview:m_imageViewBackground];
}

-(void)ChangeStockCode:(NSString*)aStockCode
{
    m_strCurrentStockCode = aStockCode;
    [m_currentStockInfo StartNetStockInfoOfMinute:m_strCurrentStockCode];
}
-(void)CurrentViewFresh
{
    [m_currentStockInfo WebViewFresh];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
