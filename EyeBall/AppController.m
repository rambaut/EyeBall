//
//  AppController.m
//  EyeBall
//
//  Created by Andrew Rambaut on 09/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import "AppController.h"
#import "PreferenceController.h"

@implementation AppController

+ (void)initialize
{
    NSMutableDictionary *defaultValues = [NSMutableDictionary dictionary];
    
    NSData *colorAsData = [NSKeyedArchiver archivedDataWithRootObject: [NSColor yellowColor]];
    
    [defaultValues setObject:colorAsData forKey:EBAlignmentBackgroundColorKey];
    [defaultValues setObject:[NSNumber numberWithBool:YES] forKey:EBEmptyDocumentKey];
    
    [[NSUserDefaults standardUserDefaults] registerDefaults:defaultValues];

}

+ (BOOL)applicationShouldOpenUntitledFile:(NSApplication *)sender
{
    return [PreferenceController preferenceEmptyDocument];
}

- (IBAction)showPreferencePanel:(id)sender
{
    if (!preferenceController) {
        preferenceController = [[PreferenceController alloc] init];        
    }
    [preferenceController showWindow:self];
}
@end
