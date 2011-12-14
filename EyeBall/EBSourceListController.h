//
//  EBSourceListController.h
//  EyeBall
//
//  Created by Andrew Rambaut on 13/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@class IconViewController;
@class FileViewController;
@class ChildEditController;
@class SeparatorCell;

@interface EBSourceListController : NSViewController
{
	IBOutlet NSOutlineView		*myOutlineView;
	IBOutlet NSTreeController	*treeController;
	IBOutlet NSView				*placeHolderView;
	IBOutlet NSSplitView		*splitView;
	IBOutlet WebView			*webView;
	
	IBOutlet NSButton			*addFolderButton;
	IBOutlet NSButton			*removeButton;
	IBOutlet NSPopUpButton		*actionButton;
	IBOutlet NSTextField		*urlField;
	
	NSMutableArray				*contents;
	
	// cached images for generic folder and url document
	NSImage						*folderImage;
	NSImage						*urlImage;
	
	NSView						*currentView;
	IconViewController			*iconViewController;
	FileViewController			*fileViewController;
	ChildEditController			*childEditController;
	
	BOOL						buildingOutlineView;	// signifies we are building the outline view at launch time
	
	NSArray						*dragNodesArray; // used to keep track of dragged nodes
	
	BOOL						retargetWebView;
	
	SeparatorCell				*separatorCell;	// the cell used to draw a separator line in the outline view
}

@property (retain) NSArray *dragNodesArray;

- (void)setContents:(NSArray *)newContents;
- (NSMutableArray *)contents;

- (IBAction)addFolderAction:(id)sender;
- (IBAction)addBookmarkAction:(id)sender;
- (IBAction)editBookmarkAction:(id)sender;

@end
