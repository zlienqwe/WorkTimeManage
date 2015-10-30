//
//  ListViewController.m
//  WorkTimeManage
//
//  Created by Zlien on 15/10/30.
//  Copyright © 2015年 Zlien. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

@end
