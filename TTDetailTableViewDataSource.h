//
//  TTDetailTableViewDataSource.h
//  Time-Tracker
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTProject.h"

@interface TTDetailTableViewDataSource : NSObject <UITableViewDataSource>

@property (nonatomic, strong) TTProject *project;

@property (nonatomic, strong) TTDetailTableViewDataSource *detailDataSource;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end
