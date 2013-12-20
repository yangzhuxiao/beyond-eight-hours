//
//  YXZAddActivityViewController.h
//  Beyond Eight Hours
//
//  Created by xiaozhu on 19/12/13.
//  Copyright (c) 2013 xiaozhu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface YXZAddActivityViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, retain) UIBarButtonItem *saveButton;
@property (weak, nonatomic) IBOutlet UITextField *textInput;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

-(void)saveActivity;


@end
