//
//  Alignment.h
//  EyeBall
//
//  Created by Andrew Rambaut on 13/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Alignment : NSManagedObject

@property (nonatomic, retain) NSSet *loci;
@property (nonatomic, retain) NSSet *taxa;
@property (nonatomic, retain) NSSet *sequences;
@end

@interface Alignment (CoreDataGeneratedAccessors)

- (void)addLociObject:(NSManagedObject *)value;
- (void)removeLociObject:(NSManagedObject *)value;
- (void)addLoci:(NSSet *)values;
- (void)removeLoci:(NSSet *)values;

- (void)addTaxaObject:(NSManagedObject *)value;
- (void)removeTaxaObject:(NSManagedObject *)value;
- (void)addTaxa:(NSSet *)values;
- (void)removeTaxa:(NSSet *)values;

- (void)addSequencesObject:(NSManagedObject *)value;
- (void)removeSequencesObject:(NSManagedObject *)value;
- (void)addSequences:(NSSet *)values;
- (void)removeSequences:(NSSet *)values;

@end
