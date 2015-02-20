//
//  TTEntry.h
//  Time-Tracker
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTEntry : NSObject

@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

-(id)initWithDictionary:(NSDictionary *)dictionary;
-(NSDictionary *)entryDictionary;

@end
