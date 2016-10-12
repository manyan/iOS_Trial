//
//  MainViewController.h
//  HelloWorld
//
//  Created by xxmajia on 11/10/16.
//  Copyright © 2016 xxmajia.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UILabel *label;

@end
