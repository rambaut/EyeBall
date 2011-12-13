//
//  AppController.h
//  EyeBall
//
//  Created by Andrew Rambaut on 09/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PreferenceController;

@interface AppController : NSObject {
    PreferenceController *preferenceController;
}

-(IBAction)showPreferencePanel:(id)sender;

@end
