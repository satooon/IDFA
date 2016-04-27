//
//  ViewController.m
//  IDFA
//
//  Created by satooon on 2016/04/27.
//  Copyright © 2016年 satooon. All rights reserved.
//

#import "ViewController.h"
#import <AdSupport/AdSupport.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ASIdentifierManager *im = [ASIdentifierManager sharedManager];
    NSLog(@"advertisingTrackingEnabled: %d", im.advertisingTrackingEnabled);
    NSLog(@"idfa: %@", im.advertisingIdentifier.UUIDString);
    
    UILabel *label1 = [[UILabel alloc] init];
    label1.text = [NSString stringWithFormat:@"advertisingTrackingEnabled: %d", im.advertisingTrackingEnabled];
    [label1 sizeToFit];
    label1.center = self.view.center;
    [self.view addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc] init];
    label2.text = [NSString stringWithFormat:@"%@", im.advertisingIdentifier.UUIDString];
    [label2 sizeToFit];
    label2.center = CGPointMake(self.view.center.x, self.view.center.y+50);
    [self.view addSubview:label2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
