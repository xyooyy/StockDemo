//
//  ASCustomKeyBoard1.h
//  KeyBoard
//
//  Created by WangM on 12-12-4.
//  Copyright (c) 2012年 AlphaStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

#define buttonNumberWidth 50
#define buttonNumberHeight 40

@interface ASStockKeyBoard : UIView<UITextFieldDelegate>
{
    UITextField * m_textField;
}

-(id)init:(UITextField *)aTextField;

@end
