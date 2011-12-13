//
//  EBSequencesViewController.m
//  EyeBall
//
//  Created by Andrew Rambaut on 13/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import "EBSequencesViewController.h"

@implementation EBSequencesViewController

- (id)init
{
    self = [super initWithNibName:@"SequencesView" bundle:nil];
    if (self) {
        [self setTitle:@"Sequences"];
    }
    return self;
}

@end
