//
//  EBLociViewController.m
//  EyeBall
//
//  Created by Andrew Rambaut on 13/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import "EBLociViewController.h"

@implementation EBLociViewController

- (id)init
{
    self = [super initWithNibName:@"LociView" bundle:nil];
    if (self) {
        [self setTitle:@"Loci"];
    }
    return self;
}

@end
