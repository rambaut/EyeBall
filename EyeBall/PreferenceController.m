//
//  PreferenceController.m
//  EyeBall
//
//  Created by Andrew Rambaut on 09/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import "PreferenceController.h"

NSString * const EBAlignmentBackgroundColorKey = @"EBAlignmentBgColor";
NSString * const EBEmptyDocumentKey = @"EBEmptyDocumentFlag";

@implementation PreferenceController

- (id)init
{
    self = [super initWithWindowNibName:@"Preferences"];    
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    [colorWell setColor:[PreferenceController preferenceAlignmentBackgroundColor]];
    [checkbox setState:[PreferenceController preferenceEmptyDocument]];
}

- (IBAction)changeBackgroundColor:(id)sender
{
    NSColor *color = [colorWell color];
    [PreferenceController setPreferenceAlignmentBackgroundColor:color];
    
}

- (IBAction)changeNewEmptyDoc:(id)sender
{
    NSInteger state = [checkbox state];
    [PreferenceController setPreferenceEmptyDocument:state];
}


+(NSColor *)preferenceAlignmentBackgroundColor
{
    NSData *colorAsData = [[NSUserDefaults standardUserDefaults] objectForKey:EBAlignmentBackgroundColorKey];
    return [NSKeyedUnarchiver unarchiveObjectWithData:colorAsData];
}

+(void)setPreferenceAlignmentBackgroundColor:(NSColor *)color
{
    NSData *colorAsData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [[NSUserDefaults standardUserDefaults] setObject:colorAsData forKey:EBAlignmentBackgroundColorKey];
}

+(BOOL)preferenceEmptyDocument
{
    return [[NSUserDefaults standardUserDefaults] boolForKey:EBEmptyDocumentKey];
}

+(void)setPreferenceEmptyDocument:(BOOL)emptyDocument
{
    [[NSUserDefaults standardUserDefaults] setBool:emptyDocument forKey:EBEmptyDocumentKey];
}
@end
