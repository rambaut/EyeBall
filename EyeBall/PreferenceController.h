//
//  PreferenceController.h
//  EyeBall
//
//  Created by Andrew Rambaut on 09/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import <Cocoa/Cocoa.h>

extern NSString * const EBAlignmentBackgroundColorKey;
extern NSString * const EBEmptyDocumentKey;

@interface PreferenceController : NSWindowController {
IBOutlet NSColorWell *colorWell;
IBOutlet NSButton *checkbox;
}
- (IBAction)changeBackgroundColor:(id)sender;
- (IBAction)changeNewEmptyDoc:(id)sender;

+ (NSColor *)preferenceAlignmentBackgroundColor;
+ (void)setPreferenceAlignmentBackgroundColor:(NSColor *)color;

+ (BOOL)preferenceEmptyDocument;
+ (void)setPreferenceEmptyDocument: (BOOL)emptyDocument;
@end
