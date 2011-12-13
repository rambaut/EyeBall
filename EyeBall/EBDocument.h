//
//  EBDocument.h
//  EyeBall
//
//  Created by Andrew Rambaut on 13/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class ManagingViewController;

@interface EBDocument : NSPersistentDocument {
    IBOutlet NSBox *box;
    
    NSMutableArray *viewControllers;
}

- (void)displayViewController:(ManagingViewController *)vc;

@end
