//
//  SelectBankViewController.h
//  HelloWorld
//
//  Created by xxmajia on 14/10/16.
//  Copyright © 2016 xxmajia.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectBankViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSString *selectedBank;

@end
