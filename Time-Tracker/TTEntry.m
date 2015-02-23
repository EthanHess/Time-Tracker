//
//  TTEntry.m
//  Time-Tracker
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTEntry.h"

static NSString * const startTimeKey = @"startTime";
static NSString * const endTimeKey = @"endTime";

@implementation TTEntry

- (id)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    if (self) {
        
        self.startTime = dictionary[startTimeKey];
        self.endTime = dictionary[endTimeKey];
        
    }
    
    return self;
    
}

-(NSDictionary *)entryDictionary {
    
    NSMutableDictionary *entryDictionary = [NSMutableDictionary new];
    
    if (self.startTime) {
        [entryDictionary setObject:self.startTime forKey:startTimeKey];
    }
    if (self.endTime) {
        [entryDictionary setObject:self.endTime forKey:endTimeKey];
    
}
 
    return entryDictionary;
}

@end
