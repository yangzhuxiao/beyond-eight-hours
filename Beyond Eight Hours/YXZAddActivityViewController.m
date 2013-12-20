//
//  YXZAddActivityViewController.m
//  Beyond Eight Hours
//
//  Created by xiaozhu on 19/12/13.
//  Copyright (c) 2013 xiaozhu. All rights reserved.
//

#import "YXZAddActivityViewController.h"
#import "Activity.h"
#import "YXZMyActivityViewController.h"

@interface YXZAddActivityViewController ()

@end

@implementation YXZAddActivityViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _saveButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveActivity)];
    self.navigationItem.title = @"添加活动";
    self.navigationItem.rightBarButtonItem = self.saveButton;
    
}

-(void)saveActivity
{
    Activity *activity = [NSEntityDescription insertNewObjectForEntityForName:@"Activity" inManagedObjectContext:_managedObjectContext];
    activity.name = self.textInput.text;
    activity.timelengh = @"0";
    [self saveContext];
    
    YXZMyActivityViewController *myActivityViewController = [[YXZMyActivityViewController alloc] init];
    NSManagedObjectContext *context = self.managedObjectContext;
    myActivityViewController.managedObjectContext = context;
    
    [[self navigationController] popViewControllerAnimated:YES];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == self.textInput ) {
        [textField resignFirstResponder];
    }
    return YES;
}

- (void)saveContext
{
    NSError *error = nil;
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}
@end