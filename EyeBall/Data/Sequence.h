//
//  Sequence.h
//  EyeBall
//
//  Created by Andrew Rambaut on 13/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Sequence : NSManagedObject

@property (nonatomic, retain) NSString * file;
@property (nonatomic, retain) NSString * source;
@property (nonatomic, retain) NSManagedObject *locus;
@property (nonatomic, retain) NSManagedObject *taxon;

@end
