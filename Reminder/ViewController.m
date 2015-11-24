//
//  ViewController.m
//  Reminder
//
//  Created by YYQ on 15/11/15.
//  Copyright © 2015年 YYQ. All rights reserved.
//

#import "ViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import <SDWebImage/UIImage+GIF.h>
//#import <YYQCategory.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *gifImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSArray *array = @[@"1",@"2",@"3",@"4"];
//    [array each:^(id object) {
//        
//    }];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)click:(id)sender {
    _gifImageView.layer.borderWidth = 2;
    _gifImageView.layer.backgroundColor = [UIColor redColor].CGColor;
    _gifImageView.image = [UIImage sd_animatedGIFWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://img5.hao123.com/data/3_2ec986ed8d235ebb3bd562ed5b782eb6_0"]]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
