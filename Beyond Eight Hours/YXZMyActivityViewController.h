//
//  YXZMyActivityViewController.h
//  Beyond Eight Hours
//
//  Created by xiaozhu on 19/12/13.
//  Copyright (c) 2013 xiaozhu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
 

@interface YXZMyActivityViewController : UITableViewController
@property (nonatomic, retain) UIBarButtonItem *addButton;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain) NSMutableArray *activityArray;


-(void)addActivity;

@end
