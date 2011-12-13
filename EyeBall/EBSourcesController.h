//
//  EBSourceController.h
//  EyeBall
//
//  Created by Andrew Rambaut on 28/09/2011.
//  Copyright (c) 2011 Andrew Rambaut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ManagingViewController.h"

@class EBDocument;

@interface EBSourcesController : NSTreeController {

    IBOutlet NSOutlineView		*outlineView;

    IBOutlet NSButton			*addButton;
    IBOutlet NSButton			*removeButton;

}
@end
