//
//  EBAlignmentViewController.m
//  EyeBall
//
//  Created by Andrew Rambaut on 13/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import "EBAlignmentViewController.h"

@implementation EBAlignmentViewController

- (id)init
{
    self = [super initWithNibName:@"AlignmentView" bundle:nil];
    if (self) {
        [self setTitle:@"Alignment"];
    }
    return self;
}

@end
