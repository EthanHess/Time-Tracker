//
//  TTProject.h
//  Time-Tracker
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTEntry.h"

@interface TTProject : NSObject


@property (nonatomic, strong) NSArray * entries;
@property (nonatomic, strong) NSString * title;

- (NSDictionary *)projectDictionary;
- (id) initWithDictionary:(NSDictionary *)dictionary;

-(void)addEntry:(TTEntry *)entry;
-(void)RemoveEntry:(TTEntry *)entry;

-(void)endCurrentEntry;
-(void)startNewEntry;

-(void)synchronize;

@end
