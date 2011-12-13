//
//  EBOrganizerViewController.m
//  EyeBall
//
//  Created by Andrew Rambaut on 13/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import "EBOrganizerViewController.h"

@implementation EBOrganizerViewController

- (id)init
{
    self = [super initWithNibName:@"OrganizerView" bundle:nil];
    if (self) {
        [self setTitle:@"Organizer"];
    }
    return self;
}

@end
