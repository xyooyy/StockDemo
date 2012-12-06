//
//  ASCustomTextField1ViewController.m
//  KeyBoard1
//
//  Created by WangM on 12-12-5.
//  Copyright (c) 2012年 AlphaStudio. All rights reserved.
//

#import "ASStockTextFieldViewController.h"

@interface ASStockTextFieldViewController ()

@end

@implementation ASStockTextFieldViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    
    m_textField.frame = CGRectMake(0, 0, m_textFieldRect.size.width, m_textFieldRect.size.height);
    
    m_textField.borderStyle = UITextBorderStyleLine;
    m_textField.delegate = self;
    [self.view addSubview:m_textField];
    
    m_customKeyBoard.frame = CGRectMake(0, 0, 320, 216);
    
    self.view.backgroundColor = [UIColor cyanColor];
}

//获取系统键盘视图
- (UIView *)getSystemKeyboardView
{
    UIView *returnView = nil;
    
    UIWindow *keyboardWindow = nil;
    for (UIWindow *window in [[UIApplication sharedApplication] windows])
    {
        if (![NSStringFromClass([window class]) isEqualToString:NSStringFromClass([UIWindow class])])
        {
            keyboardWindow = window;
            break;
        }
    }
    if (keyboardWindow == nil)
        return nil;
    
    for (UIView *firstView in [keyboardWindow subviews])
    {
        if ([[firstView description] hasPrefix:@"<UIPeripheralHostView"])
        {
            for (UIView *secondView in [firstView subviews])
            {
                if ([[secondView description] hasPrefix:@"<UIKeyboardAutomatic"])
                {
                    returnView = secondView;
                }
            }
        }
    }
    
    return returnView;
}

- (void)keyboardDidShow:(id)notification
{
    UIButton * _switchNumButton = [UIButton buttonWithType:UIButtonTypeCustom];

    UIView * _keyboardDefaultView = [self getSystemKeyboardView];
    if (_keyboardDefaultView && [m_textField isFirstResponder])
    {
                [_switchNumButton setTitle:@"123" forState:UIControlStateNormal];
        [_switchNumButton setBackgroundImage:[UIImage imageNamed:@"num.png"] forState:UIControlStateNormal];
        _switchNumButton.frame = CGRectMake(3, 173, 76, 40);
        [_switchNumButton addTarget:self action:@selector(changeCutomeButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_keyboardDefaultView addSubview:_switchNumButton];
    }
    else
    {
        if (_switchNumButton) {
            [_switchNumButton removeFromSuperview];
        }
    }
}

-(IBAction)changeCutomeButtonClicked:(id)sender
{
    
    m_textField.inputView = m_customKeyBoard;
    [m_textField reloadInputViews];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)init
{
    self = [super init];
    if (self != nil) {
        m_textField = [[UITextField alloc] init];
        m_customKeyBoard = [[ASStockKeyBoard alloc] init:m_textField];
    }
    return self;
}

-(id)init:(CGRect)aRect
{
    self = [super init];
    if (self != nil) {
        m_textField = [[UITextField alloc] init];
        m_customKeyBoard = [[ASStockKeyBoard alloc] init:m_textField];
        m_textFieldRect = aRect;
        self.view.frame = aRect;
    }
    return self;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [m_textField resignFirstResponder];
    return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    m_textField.inputView = m_customKeyBoard;
    
    return YES;
}

@end
