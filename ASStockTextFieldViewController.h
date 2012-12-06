//
//  ASCustomTextField1ViewController.h
//  KeyBoard1
//
//  Created by WangM on 12-12-5.
//  Copyright (c) 2012年 AlphaStudio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASStockKeyBoard.h"

@interface ASStockTextFieldViewController : UIViewController<UITextFieldDelegate>
{
    UITextField * m_textField;
    ASStockKeyBoard * m_customKeyBoard;
    CGRect m_textFieldRect;
}
-(id)init;
-(id)init:(CGRect)aRect;

@end
