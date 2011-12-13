//
//  EBTaxaViewController.m
//  EyeBall
//
//  Created by Andrew Rambaut on 13/12/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import "EBTaxaViewController.h"

@implementation EBTaxaViewController

- (id)init
{
    self = [super initWithNibName:@"TaxaView" bundle:nil];
    if (self) {
        [self setTitle:@"Taxa"];
    }
    return self;
}

@end
