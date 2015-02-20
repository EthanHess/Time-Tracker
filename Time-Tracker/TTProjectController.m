//
//  TTProjectController.m
//  Time-Tracker
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTProjectController.h"

static NSString *const projectListKey = @"projectList";


@interface TTProjectController ()

@end

@implementation TTProjectController

+ (TTProjectController *)sharedInstance {
    static TTProjectController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [TTProjectController new];
    });
    
    return sharedInstance;
    
}

-(void)setProjects:(NSArray *)projects {
    
    self.projects = projects;
    [self syncronize];
    
}

-(void)addProject: (TTProject *)project {

    if (!project) {
        return;
    }
    
    NSMutableArray *projectEntries = [[NSMutableArray alloc]initWithArray:self.projects];
    [projectEntries addObject:project];
    self.projects = projectEntries;
   // [self syncronize];
}


-(void)removeProject: (TTProject*)project {
    
    if (!project) {
        return;
    }

    NSMutableArray *projectEntries = self.projects.mutableCopy;
    [projectEntries removeObject:project];
    self.projects = projectEntries;

}



-(void)loadFromDefaults {
    
    NSArray *projectDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:projectListKey];
    
    NSMutableArray *projects = [NSMutableArray new];
    for (NSDictionary *project in projectDictionaries) {
        
        [projects addObject:[[TTProject alloc] initWithDictionary:project]];
    }
    
    self.projects = projects;
}

-(void) syncronize {
    
    NSMutableArray *projectDictionaries = [NSMutableArray new];
    
    for (TTProject *project in self.projects) {
        
        [projectDictionaries addObject:[project projectDictionary]];
        
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:projectDictionaries forKey:projectListKey];
    [[NSUserDefaults standardUserDefaults] synchronize]; 
    
}

@end
