//
//  EBDocument.m
//  EyeBall
//
//  Created by Andrew Rambaut on 13/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import "EBDocument.h"
#import "SourceListController.h"
#import "EBAlignmentViewController.h"
#import "EBLociViewController.h"
#import "EBOrganizerViewController.h"
#import "EBSequencesViewController.h"
#import "EBTaxaViewController.h"

float const kMinOutlineViewSplit = 120.0f;

@implementation EBDocument

- (id)init
{
    self = [super init];
    if (self) {
        ManagingViewController *vc;
        
        organizerViewController = [[EBOrganizerViewController alloc] init];
        [organizerViewController setManagedObjectContext:[self managedObjectContext]];

        taxaViewController = [[EBTaxaViewController alloc] init];
        [taxaViewController setManagedObjectContext:[self managedObjectContext]];
        
        lociViewController = [[EBLociViewController alloc] init];
        [lociViewController setManagedObjectContext:[self managedObjectContext]];
        
        sequencesViewController = [[EBSequencesViewController alloc] init];
        [sequencesViewController setManagedObjectContext:[self managedObjectContext]];
        
        alignmentViewController = [[EBAlignmentViewController alloc] init];
        [alignmentViewController setManagedObjectContext:[self managedObjectContext]];
        
        currentViewController = organizerViewController;
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
    [self displayViewController: currentViewController];    
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

#pragma mark - Split View Delegate

// -------------------------------------------------------------------------------
//	splitView:constrainMinCoordinate:
//
//	What you really have to do to set the minimum size of both subviews to kMinOutlineViewSplit points.
// -------------------------------------------------------------------------------
- (CGFloat)splitView:(NSSplitView *)splitView constrainMinCoordinate:(CGFloat)proposedCoordinate ofSubviewAt:(int)index
{
	return proposedCoordinate + kMinOutlineViewSplit;
}

// -------------------------------------------------------------------------------
//	splitView:constrainMaxCoordinate:
// -------------------------------------------------------------------------------
- (CGFloat)splitView:(NSSplitView *)splitView constrainMaxCoordinate:(CGFloat)proposedCoordinate ofSubviewAt:(int)index
{
	return proposedCoordinate - kMinOutlineViewSplit;
}

// -------------------------------------------------------------------------------
//	splitView:resizeSubviewsWithOldSize:
//
//	Keep the left split pane from resizing as the user moves the divider line.
// -------------------------------------------------------------------------------
- (void)splitView:(NSSplitView*)sender resizeSubviewsWithOldSize:(NSSize)oldSize
{
	NSRect newFrame = [sender frame]; // get the new size of the whole splitView
	NSView *left = [[sender subviews] objectAtIndex:0];
	NSRect leftFrame = [left frame];
	NSView *right = [[sender subviews] objectAtIndex:1];
	NSRect rightFrame = [right frame];
    
	CGFloat dividerThickness = [sender dividerThickness];
    
	leftFrame.size.height = newFrame.size.height;
    
	rightFrame.size.width = newFrame.size.width - leftFrame.size.width - dividerThickness;
	rightFrame.size.height = newFrame.size.height;
	rightFrame.origin.x = leftFrame.size.width + dividerThickness;
    
	[left setFrame:leftFrame];
	[right setFrame:rightFrame];
}

@end

