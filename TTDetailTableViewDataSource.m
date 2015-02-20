//
//  TTDetailTableViewDataSource.m
//  Time-Tracker
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTDetailTableViewDataSource.h"
#import "TTProjectController.h"
#import "TTDetailViewController.h"
#import "TTProject.h"

@implementation TTDetailTableViewDataSource




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.project.entries count];
    
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EntryCell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"EntryCell"];
    }
    
//    TTEntry *entry = [self.project entries][indexPath.row];
//    
//    cell.textLabel.text = [NSString stringWithFormat:@"%@ - %@", entry.startTime. entry.endTime];
//    
//    return cell;
}

@end
