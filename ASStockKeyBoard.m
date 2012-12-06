//
//  ASCustomKeyBoard1.m
//  KeyBoard
//
//  Created by WangM on 12-12-4.
//  Copyright (c) 2012年 AlphaStudio. All rights reserved.
//

#import "ASStockKeyBoard.h"

@implementation ASStockKeyBoard

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void)initWithButtonNumber1
{
    UIButton * number1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number1.frame = CGRectMake(70, 10, buttonNumberWidth, buttonNumberHeight);
    [number1 setTitle:@"1" forState:UIControlStateNormal];
    [self addSubview:number1];
    [number1 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)initWithButtonNumber2
{
    UIButton * number2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number2.frame = CGRectMake(135, 10, buttonNumberWidth, buttonNumberHeight);
    [number2 setTitle:@"2" forState:UIControlStateNormal];
    [self addSubview:number2];
    [number2 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)initWithButtonNumber3
{
    UIButton * number3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number3.frame = CGRectMake(200, 10, buttonNumberWidth, buttonNumberHeight);
    [number3 setTitle:@"3" forState:UIControlStateNormal];
    [self addSubview:number3];
    [number3 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)initWithButtonNumber4
{
    UIButton * number4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number4.frame = CGRectMake(70, 60, buttonNumberWidth, buttonNumberHeight);
    [number4 setTitle:@"4" forState:UIControlStateNormal];
    [self addSubview:number4];
    [number4 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)initWithButtonNumber5
{
    UIButton * number5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number5.frame = CGRectMake(135, 60, buttonNumberWidth, buttonNumberHeight);
    [number5 setTitle:@"5" forState:UIControlStateNormal];
    [self addSubview:number5];
    [number5 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)initWithButtonNumber6
{
    UIButton * number6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number6.frame = CGRectMake(200, 60, buttonNumberWidth, buttonNumberHeight);
    [number6 setTitle:@"6" forState:UIControlStateNormal];
    [self addSubview:number6];
    [number6 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)initWithButtonNumber7
{
    UIButton * number7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number7.frame = CGRectMake(70, 110, buttonNumberWidth, buttonNumberHeight);
    [number7 setTitle:@"7" forState:UIControlStateNormal];
    [self addSubview:number7];
    [number7 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)initWithButtonNumber8
{
    UIButton * number8 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number8.frame = CGRectMake(135, 110, buttonNumberWidth, buttonNumberHeight);
    [number8 setTitle:@"8" forState:UIControlStateNormal];
    [self addSubview:number8];
    [number8 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)initWithButtonNumber9
{
    UIButton * number9 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number9.frame = CGRectMake(200, 110, buttonNumberWidth, buttonNumberHeight);
    [number9 setTitle:@"9" forState:UIControlStateNormal];
    [self addSubview:number9];
    [number9 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)initWithButtonNumber0
{
    UIButton * number0 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number0.frame = CGRectMake(135, 160, buttonNumberWidth, buttonNumberHeight);
    [number0 setTitle:@"0" forState:UIControlStateNormal];
    [self addSubview:number0];
    [number0 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)initWithButtonNumber600
{
    UIButton * number600 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number600.frame = CGRectMake(5, 10, 55, 35);
    [number600 setTitle:@"600" forState:UIControlStateNormal];
    [self addSubview:number600];
    [number600 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)initWithButtonNumber601
{
    UIButton * number601 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number601.frame = CGRectMake(5, 45, 55, 35);
    [number601 setTitle:@"601" forState:UIControlStateNormal];
    [self addSubview:number601];
    [number601 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)initWithButtonNumber001
{
    UIButton * number001 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number001.frame = CGRectMake(5, 80, 55, 35);
    [number001 setTitle:@"001" forState:UIControlStateNormal];
    [self addSubview:number001];
    [number001 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)initWithButtonNumber002
{
    UIButton * number002 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    number002.frame = CGRectMake(5, 115, 55, 35);
    [number002 setTitle:@"002" forState:UIControlStateNormal];
    [self addSubview:number002];
    [number002 addTarget:self action:@selector(numberKeyBoardInput:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)initWithButtonBack
{
    UIButton * buttonBack = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonBack.frame = CGRectMake(265, 10, 50, 40);
    [buttonBack setTitle:@"←" forState:UIControlStateNormal];
    [self addSubview:buttonBack];
    [buttonBack addTarget:self action:@selector(numberKeyBoardBackspace) forControlEvents:UIControlEventTouchUpInside];
}

-(void)initWithButtonHide
{
    UIButton * buttonHide = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonHide.frame = CGRectMake(265, 60, 50, 40);
    [buttonHide setTitle:@"隐藏" forState:UIControlStateNormal];
    [self addSubview:buttonHide];
    [buttonHide addTarget:self action:@selector(numberKeyHide) forControlEvents:UIControlEventTouchUpInside];
}

-(void)initWithButtonCleanAll
{
    UIButton * buttonCleanAll = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonCleanAll.frame = CGRectMake(265, 110, 50, 40);
    [buttonCleanAll setTitle:@"清空" forState:UIControlStateNormal];
    [self addSubview:buttonCleanAll];
    [buttonCleanAll addTarget:self action:@selector(numberKeyCleanAll) forControlEvents:UIControlEventTouchUpInside];
}

-(void)initWithButtonABC
{
    UIButton * buttonABC = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonABC.frame = CGRectMake(5, 160, 120, 40);
    [buttonABC setTitle:@"ABC" forState:UIControlStateNormal];
    [self addSubview:buttonABC];
    [buttonABC addTarget:self action:@selector(numberKeyABC) forControlEvents:UIControlEventTouchUpInside];
}

-(void)initWithButtonSearch
{
    UIButton * buttonSearch = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonSearch.frame = CGRectMake(195, 160, 120, 40);
    [buttonSearch setTitle:@"搜索" forState:UIControlStateNormal];
    [self addSubview:buttonSearch];
    [buttonSearch addTarget:self action:@selector(numberKeyBoardFinish) forControlEvents:UIControlEventTouchUpInside];
}

-(id)init:(UITextField *)aTextField
{
    self = [super init];
    if (self != nil) {
        
        [self initWithButtonNumber1];
        [self initWithButtonNumber2];
        [self initWithButtonNumber3];
        [self initWithButtonNumber4];
        [self initWithButtonNumber5];
        [self initWithButtonNumber6];
        [self initWithButtonNumber7];
        [self initWithButtonNumber8];
        [self initWithButtonNumber9];
        [self initWithButtonNumber0];
        [self initWithButtonNumber600];
        [self initWithButtonNumber601];
        [self initWithButtonNumber001];
        [self initWithButtonNumber002];
        [self initWithButtonBack];
        [self initWithButtonHide];
        [self initWithButtonCleanAll];
        [self initWithButtonABC];
        [self initWithButtonSearch];
        
        m_textField = [[UITextField alloc] init];
        m_textField = aTextField;
        m_textField.delegate = self;
        
        [self setBackgroundColor:[UIColor grayColor]];
    }
    
    return self;
}

- (IBAction)numberKeyBoardInput:(id)sender
{
    UIButton* btn = (UIButton*)sender;
    
    NSString * title = btn.currentTitle;
    
    NSMutableString* mutableString = [[NSMutableString alloc] initWithFormat:@"%@%@", m_textField.text, title];
    m_textField.text = mutableString;
}

- (IBAction)numberKeyBoardBackspace
{
    NSMutableString* mutableString = [[NSMutableString alloc] initWithFormat:@"%@", m_textField.text];
    if ([mutableString length] != 0) {
        NSRange tmpRange;
        tmpRange.location = [mutableString length] - 1;
        tmpRange.length = 1;
        [mutableString deleteCharactersInRange:tmpRange];
    }
    m_textField.text = mutableString;
}

- (IBAction)numberKeyBoardFinish
{
    [m_textField resignFirstResponder];
}

- (IBAction)numberKeyHide
{
    [m_textField resignFirstResponder];
}
- (IBAction)numberKeyCleanAll
{
    m_textField.text = @"";
}
- (IBAction)numberKeyABC
{
    m_textField.inputView = nil;
    
    m_textField.inputAccessoryView = nil;
    
    m_textField.keyboardType = UIKeyboardTypeASCIICapable;
    
    m_textField.autocapitalizationType = UITextAutocapitalizationTypeNone;//让输入的句子不自动大写
    
    [m_textField reloadInputViews];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    m_textField = textField;
    
    m_textField.inputView = self;
    
    [m_textField reloadInputViews];
    
    return YES;
}

@end
