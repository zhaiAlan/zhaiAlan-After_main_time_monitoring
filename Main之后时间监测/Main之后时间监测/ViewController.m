//
//  ViewController.m
//  Main之后时间监测
//
//  Created by Alan on 3/17/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import "ViewController.h"
#import "BLStopwatch.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //刷新时间:
       [[BLStopwatch sharedStopwatch] refreshMedianTime];
       
       int a = 0;
       for (int i = 0; i < 10000000; i++) {
           a++;
       };
       [[BLStopwatch sharedStopwatch] splitWithDescription:@"viewDidLoad"];
    // Do any additional setup after loading the view.
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    //刷新时间:
       [[BLStopwatch sharedStopwatch] refreshMedianTime];
       
       int a = 0;
       for (int i = 0; i < 10000000; i++) {
           a++;
       };
       [[BLStopwatch sharedStopwatch] splitWithDescription:@"viewDidAppear"];
    [[BLStopwatch sharedStopwatch] stopAndPresentResultsThenReset];
    
    
}


@end
