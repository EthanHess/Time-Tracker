//
//  TTCustomEntryViewController.m
//  Time-Tracker
//
//  Created by Ethan Hess on 2/20/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTCustomEntryViewController.h"

@interface TTCustomEntryViewController ()

@property (weak, nonatomic) IBOutlet UIDatePicker *startPickerDate;
@property (weak, nonatomic) IBOutlet UIDatePicker *endPickerDate;

@end

@implementation TTCustomEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}



- (IBAction)cancel:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil]; 
}

- (IBAction)save:(id)sender {
    
    TTEntry *entry = [TTEntry new];
    entry.startTime = self.startPickerDate.date;
    entry.endTime = self.endPickerDate.date;
    
    [self.project addEntry:entry];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)startDatePicker:(id)sender {
}

- (IBAction)endDatePicker:(id)sender {
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
