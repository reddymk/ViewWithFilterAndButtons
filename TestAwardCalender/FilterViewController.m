//
//  FilterViewController.m
//  TestAwardCalender
//
//  Created by Manish Reddy Korenda on 8/16/17.
//  Copyright © 2017 Manish Reddy Korenda. All rights reserved.
//

#import "FilterViewController.h"

@interface FilterViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISwitch *nonstopSwitch;

@end

@implementation FilterViewController

NSArray *tableData;
NSInteger selectedIndex;


- (void)viewDidLoad {
    [super viewDidLoad];

    tableData = [NSArray arrayWithObjects:@"One", @"Two", @"Three", nil];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}


- (IBAction)closeButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)doneButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"n"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"n"];
    }
    
    if(indexPath.row == selectedIndex)
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }

    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath   *)indexPath
{
    selectedIndex = indexPath.row;
    [tableView reloadData];
}

- (IBAction)resetAllButton:(id)sender {
    
    selectedIndex = 0;
    [self.tableView reloadData];
    [self.nonstopSwitch setOn:NO animated:YES];
}

@end
