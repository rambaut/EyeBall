//
//  ManagingViewController.h
//  EyeBall
//
//  Created by Andrew Rambaut on 13/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ManagingViewController : NSViewController {
    NSManagedObjectContext *managedObjectContext;
}

@property (strong) NSManagedObjectContext *managedObjectContext;
@end
