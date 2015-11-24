//
//  ThirdViewController.m
//  Reminder
//
//  Created by YYQ on 15/11/23.
//  Copyright © 2015年 YYQ. All rights reserved.
//

#import "ThirdViewController.h"
#import "FourthViewController.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSMutableArray *stachArray = [self.navigationController.viewControllers mutableCopy];
    [stachArray removeObjectAtIndex:1];
    FourthViewController *fourthVC = [FourthViewController new];
    [stachArray insertObject:fourthVC atIndex:1];
    self.navigationController.viewControllers = [NSArray arrayWithArray:stachArray];
    
}
- (IBAction)thirdClick:(UIButton *)sender {
    
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
