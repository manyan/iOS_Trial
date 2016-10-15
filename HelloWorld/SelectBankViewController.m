//
//  SelectBankViewController.m
//  HelloWorld
//
//  Created by xxmajia on 14/10/16.
//  Copyright © 2016 xxmajia.org. All rights reserved.
//

#import "SelectBankViewController.h"
#import "EnterBankAccountViewController.h"

@interface SelectBankViewController ()

@end

@implementation SelectBankViewController {
    NSArray *banksArray;
}

- (void)loadView
{
//    UITableView *tableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] bounds] style:UITableViewStylePlain];
//    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
//    tableView.delegate = self;
//    tableView.dataSource = self;
//    [tableView reloadData];
//    
//    self.view = tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    banksArray = @[@"Citibank", @"OCBC", @"UOB", @"HSBC"];
    
    // Create table view
    UITableView *tableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] bounds] style:UITableViewStylePlain];
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    tableView.delegate = self;
    tableView.dataSource = self;
    // Create header for table view
    CGRect titleRect = CGRectMake(0, 0, 500, 80);
    UILabel *tableTitle = [[UILabel alloc] initWithFrame:titleRect];
    tableTitle.textColor = [UIColor blueColor];
    tableTitle.backgroundColor = [tableView backgroundColor];
    tableTitle.opaque = YES;
    tableTitle.font = [UIFont boldSystemFontOfSize:18];
    tableTitle.text = @"Choose a bank";
    tableView.tableHeaderView = tableTitle;
    [tableView reloadData];
    self.title = @"Choose Bank";
    self.view = tableView;
    
    // Add right nav bar button
    UIBarButtonItem *nextButton =
    [[UIBarButtonItem alloc] initWithTitle:@"Next"
                                     style:UIBarButtonItemStylePlain
                                    target:self
                                    action:@selector(goNext)];
    
    self.navigationItem.rightBarButtonItem = nextButton;
}

- (void)goNext {
    EnterBankAccountViewController *enterBankAccountViewController = [[EnterBankAccountViewController alloc] init];
    [self.navigationController pushViewController:enterBankAccountViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [banksArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [banksArray objectAtIndex:indexPath.row];
    
    return cell;
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
