//
//  TTListViewController.h
//  Time-Tracker
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TTListTableViewDatasource.h"

@interface TTListViewController : UIViewController
@property (nonatomic, strong) TTListTableViewDatasource * dataSource;
@property (nonatomic, strong) UITableView * tableView;


@end
