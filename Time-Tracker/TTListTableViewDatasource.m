//
//  TTListTableViewDatasource.m
//  Time-Tracker
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTListTableViewDatasource.h"
#import "TTProjectController.h"
#import "TTEntry.h"
#import "TTProject.h"


@implementation TTListTableViewDatasource


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [TTProjectController sharedInstance].projects.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    TTEntry *entry = [TTProjectController sharedInstance].projects[indexPath.row];
    cell.textLabel.text = entry.startTime, entry.endTime;
    
    
    
    return cell;
}



@end
