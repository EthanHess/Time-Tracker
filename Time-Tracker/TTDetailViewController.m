//
//  TTDetailViewController.m
//  Time-Tracker
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTDetailViewController.h"
#import "TTProject.h"
#import "TTDetailTableViewDataSource.h"
#import <MessageUI/MessageUI.h>
#import "TTCustomEntryViewController.h"

@interface TTDetailViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;



@end



@implementation TTDetailViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    
    self.project.title = textField.text;
    
    return YES;
}


- (IBAction)addReport:(id)sender {
    
    TTCustomEntryViewController *customEntryViewController = [TTCustomEntryViewController new];
    customEntryViewController.project = self.project;
    
    [self presentViewController:customEntryViewController animated:YES completion:nil];
    
    
}


- (IBAction)checkIn:(id)sender {
    
    [self.project startNewEntry];
    [self.tableView reloadData];
     
}


- (IBAction)checkOut:(id)sender {
    
    [self.project endCurrentEntry];
    [self.tableView reloadData]; 
}


- (IBAction)report:(id)sender {
    
    MFMailComposeViewController *mailViewController = [[MFMailComposeViewController alloc]init];
    mailViewController.mailComposeDelegate = self;
    
    NSString *messageBody;
    
    for (TTEntry *entry in self.project.entries) {
        
        if (messageBody) {
            messageBody = [NSString stringWithFormat:@"%@\n%@ to %@\n", messageBody, entry.startTime, entry.endTime];
        }
        else {
            messageBody = [NSString stringWithFormat:@"%@\n%@ to %@\n", entry.startTime, entry.endTime];
        }
    
    }
    
    [mailViewController setMessageBody:messageBody isHTML:NO];
    
    [self presentViewController:mailViewController animated:YES completion:nil];
    
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    
    [self dismissViewControllerAnimated:YES completion:nil]; 
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
