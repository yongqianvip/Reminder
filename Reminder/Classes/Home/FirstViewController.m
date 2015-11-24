//
//  TestViewController.m
//  Reminder
//
//  Created by YYQ on 15/11/20.
//  Copyright © 2015年 YYQ. All rights reserved.
//

#import "FirstViewController.h"
#import "MapViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>
{
    NSArray *dataSource;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dataSource = @[@"Map",@"other"];
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"FirstVCCell"];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FirstVCCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"FirstVCCell"];
    }
    cell.textLabel.text = dataSource[indexPath.row];
    return cell;
    
//    JPCheapListCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
//    if (cell == nil) {
//        cell = [[JPCheapListCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        cell.selectionStyle = UITableViewCellSelectionStyleNone;
//        
//    }
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
//        SecondViewController *secondVC =[SecondViewController new];
//        secondVC.hidesBottomBarWhenPushed = YES;
//        [self.navigationController pushViewController:secondVC animated:YES];
        MapViewController *mapVC = [MapViewController new];
        mapVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:mapVC animated:YES];
    }else if (indexPath.row == 1){
        
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 -(BOOL)check:(NSString *)idNo{
 //    系数
 NSArray *coefficientArray = @[@7,@9,@10,@5,@8,@4,@2,@1,@6,@3,@7,@9,@10,@5,@8,@4,@2];
 //    余数 - 尾数 对照表
 //      0 - 1
 //      1 - 0
 //      2 - 10 -> x
 //      3 - 9
 //      4 - 8
 //      5 - 7
 //      6 - 6
 //      7 - 5
 //      8 - 4
 //      9 - 3
 //     10 - 2
 NSArray *remainderArray = @[@1,@0,@10,@9,@8,@7,@6,@5,@4,@3,@2];
 
 if (idNo.length != 18) {
 //    身份证必须是18位
 return NO;
 }
 NSInteger result = 0;
 for (int i = 0; i < coefficientArray.count; i++) {
 result += ([[idNo substringWithRange:NSMakeRange(i, 1)] integerValue] * [coefficientArray[i] integerValue]);
 }
 //    计算结果对11取余所得余数 remainder
 NSInteger remainder = result % 11;
 //    根据对照表 查出实际尾数
 NSNumber *mantissa = remainderArray[remainder];
 if ([mantissa integerValue] == 10) {
 if ([@"x" isEqualToString:[[idNo substringFromIndex:idNo.length-1] lowercaseString]]) {
 [self.view setBackgroundColor:[UIColor greenColor]];
 return YES;
 }else{
 [self.view setBackgroundColor:[UIColor redColor]];
 return NO;
 }
 }else{
 if ([mantissa integerValue] == [[idNo substringFromIndex:idNo.length-1] integerValue]) {
 [self.view setBackgroundColor:[UIColor greenColor]];
 return YES;
 }else{
 [self.view setBackgroundColor:[UIColor redColor]];
 return NO;
 }
 }
 }
 校验码的计算方法
 1、将前面的身份证号码17位数分别乘以不同的系数。从第一位到第十七位的系数分别为：7－9－10－5－8－4－2－1－6－3－7－9－10－5－8－4－2。
 2、将这17位数字和系数相乘的结果相加。
 3、用加出来和除以11，看余数是多少？
 4、余数只可能有0－1－2－3－4－5－6－7－8－9－10这11个数字。其分别对应的最后一位身份证的号码为1－0－X －9－8－7－6－5－4－3－2。
 5、通过上面得知如果余数是2，身份证的最后一位号码就是罗马数字x。如果余数是10，就会在身份证的第18位数字上出现的是2。
 例如：某男性的身份证号码 我们要看看这个身份证是不是合法的身份证。
 首先得出前17位的乘积和【(5*7)+(3*9)+(0*10)+(1*5)+(0*8)+(2*4)+(1*2)+(9*1)+(2*6)+(0*3)+(0*7)+(5*9)+(0*10)+(8*5)+(0*8)+(1*4)+(1*2)】是189，然后用189除以11得出的结果是189/11=17----2，也就是说其余数是2。最后通过对应规则就可以知道余数2对应的检验码是X。所以，可以判定这是一个正确的身份证号码。
 
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
