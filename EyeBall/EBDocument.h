//
//  EBDocument.h
//  EyeBall
//
//  Created by Andrew Rambaut on 13/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class ManagingViewController;
@class SourceListController;

@class EBOrganizerViewController;
@class EBTaxaViewController;     
@class EBLociViewController;     
@class EBSequencesViewController;
@class EBAlignmentViewController;

@interface EBDocument : NSPersistentDocument {
    IBOutlet NSBox *box;
    IBOutlet NSView				*placeHolderView;
	IBOutlet NSSplitView		*splitView;

    IBOutlet SourceListController	*sourceListController;

    EBOrganizerViewController   *organizerViewController;
    EBTaxaViewController        *taxaViewController;
    EBLociViewController        *lociViewController;
    EBSequencesViewController   *sequencesViewController;
    EBAlignmentViewController   *alignmentViewController;

    ManagingViewController		*currentViewController;

	IBOutlet NSButton			*addAlignmentButton;
	IBOutlet NSButton			*removeButton;
	IBOutlet NSPopUpButton		*actionButton;
	IBOutlet NSTextField		*urlField;
	
}

- (void)displayViewController:(ManagingViewController *)vc;

- (IBAction)addAlignmentAction:(id)sender;

@end
