//
//  TestViewController.m
//  TestAwardCalender
//
//  Created by Manish Reddy Korenda on 8/15/17.
//  Copyright © 2017 Manish Reddy Korenda. All rights reserved.
//

#import "TestViewController.h"
#import "FilterViewController.h"

@interface TestViewController ()

@property (strong, nonatomic) IBOutlet UIView *contentView;

@property (weak, nonatomic) IBOutlet UILabel *headerTitle;
@property (weak, nonatomic) IBOutlet UILabel *headerSubtitle;
@property (weak, nonatomic) IBOutlet UILabel *sevenDayDates;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,retain) FilterViewController *filterVC;

@end

@implementation TestViewController

    NSArray *tableData;

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBar.translucent = NO;


}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.translucent = NO;
    tableData = [NSArray arrayWithObjects:@"Cell 1", @"Cell 2", @"Cell 3", @"Cell 4", @"Cell 5", @"Cell 6", @"Cell 7", nil];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}
- (IBAction)rightArrow:(id)sender {
    
    
}
- (IBAction)leftArrow:(id)sender {
    
    
}

- (IBAction)filtersButton:(id)sender {
    
    self.filterVC = [[FilterViewController alloc] initWithNibName:@"FilterViewController" bundle:nil];
    self.filterVC.navigationItem.title = @"Calendar filers";
    
    [self.navigationController presentViewController:self.filterVC animated:YES completion:nil];
////    [self.navigationController pushViewController:self.filterVC animated:YES];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
//    UITableViewCell *cell = UITableViewCell();
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@""];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
    }
    
    if ([[tableData objectAtIndex:indexPath.row]  isEqual: @"Cell 2"]) {
        UIColor *color = [UIColor colorWithRed:0/255.0
                                         green:98/255.0
                                          blue:0/255.0
                                         alpha:1];
        cell.contentView.layer.borderColor = [color CGColor];
        cell.contentView.layer.borderWidth = 1.5;
    }
    
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}

@end
