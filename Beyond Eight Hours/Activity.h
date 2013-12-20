//
//  Activity.h
//  Beyond Eight Hours
//
//  Created by xiaozhu on 19/12/13.
//  Copyright (c) 2013 xiaozhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Activity : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * timelengh;

@end
