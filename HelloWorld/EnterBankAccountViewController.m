//
//  EnterBankAccountViewController.m
//  HelloWorld
//
//  Created by xxmajia on 15/10/16.
//  Copyright © 2016 xxmajia.org. All rights reserved.
//

#import "EnterBankAccountViewController.h"

@interface EnterBankAccountViewController ()

@end

@implementation EnterBankAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc]
                  initWithFrame:CGRectMake(115.0f, 150.0f, 200.0f, 30.0f)];
    label.text = @"Please enter your bank account";
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
