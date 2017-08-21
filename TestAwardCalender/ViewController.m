//
//  ViewController.m
//  TestAwardCalender
//
//  Created by Manish Reddy Korenda on 8/14/17.
//  Copyright © 2017 Manish Reddy Korenda. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()

@property (nonatomic,retain) TestViewController *vcCalendar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationController.navigationBar.translucent = NO;
    
}

- (IBAction)buttonAction:(id)sender {

        self.vcCalendar = [[TestViewController alloc] initWithNibName:@"TestView" bundle:nil];
        self.vcCalendar.navigationItem.title = @"Title 1";
    
        [self.navigationController pushViewController:self.vcCalendar animated:YES];
    
}

@end
