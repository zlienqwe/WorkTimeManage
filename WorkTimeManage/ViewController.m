//
//  ViewController.m
//  WorkTimeManage
//
//  Created by Zlien on 15/10/30.
//  Copyright © 2015年 Zlien. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer *timer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(showTime) userInfo:nil repeats:YES];
    [timer fire];
}

- (void)showTime {
    NSDate *beginTime = [NSDate date];
    NSTimeInterval sec = [beginTime timeIntervalSinceNow];
    NSDate *currentTime = [[NSDate alloc] initWithTimeIntervalSinceNow:sec];
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"HH:mm:ss"];
    NSString *nowString = [df stringFromDate:currentTime];
    
    self.timeLabel.textColor = [UIColor redColor];
    self.timeLabel.text = nowString;
}

- (IBAction)stopButton:(id)sender {
    [timer invalidate];
}

@end
