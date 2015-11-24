//
//  MapViewController.m
//  Reminder
//
//  Created by YYQ on 15/11/21.
//  Copyright © 2015年 YYQ. All rights reserved.
//

#import "MapViewController.h"
#import <Foundation_Category.h>
@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSArray *Arr = @[[@{@"key":@"56"} mutableCopy],[@{@"key":@"89"} mutableCopy],[@{@"key":@"67"} mutableCopy]];
    [Arr each:^(id object) {
        NSDictionary *dic = (NSDictionary *)object;
        [dic dictionaryByMergingWith:@{@"key2":@"456789"}];
    }];
    NSLog(@"%@",Arr);
    
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
