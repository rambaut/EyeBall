//
//  EBDocument.m
//  EyeBall
//
//  Created by Andrew Rambaut on 13/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import "EBDocument.h"
#import "EBAlignmentViewController.h"
#import "EBLociViewController.h"
#import "EBOrganizerViewController.h"
#import "EBSequencesViewController.h"
#import "EBTaxaViewController.h"

@implementation EBDocument

- (id)init
{
    self = [super init];
    if (self) {
        viewControllers = [[NSMutableArray alloc] init];
        
        ManagingViewController *vc;
        
        vc = [[EBOrganizerViewController alloc] init];
        [vc setManagedObjectContext:[self managedObjectContext]];
        [viewControllers addObject:vc];

        vc = [[EBTaxaViewController alloc] init];
        [vc setManagedObjectContext:[self managedObjectContext]];
        [viewControllers addObject:vc];
        
        vc = [[EBLociViewController alloc] init];
        [vc setManagedObjectContext:[self managedObjectContext]];
        [viewControllers addObject:vc];
        
        vc = [[EBSequencesViewController alloc] init];
        [vc setManagedObjectContext:[self managedObjectContext]];
        [viewControllers addObject:vc];
        
        vc = [[EBAlignmentViewController alloc] init];
        [vc setManagedObjectContext:[self managedObjectContext]];
        [viewControllers addObject:vc];
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"EBDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];

    // Add any code here that needs to be executed once the windowController has loaded the document's window.
    [self displayViewController:[viewControllers objectAtIndex:0]];    
}

- (void)displayViewController:(ManagingViewController *)vc
{
    // try to end editing
    NSWindow *w = [box window];
    BOOL ended = [w makeFirstResponder: w];
    if (!ended) {
        NSBeep();
        return;
    }
    
    NSView *v = [vc view];
    [box setContentView: v];
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

@end
