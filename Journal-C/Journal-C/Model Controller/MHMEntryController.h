//
//  MHMEntryController.h
//  Journal-C
//
//  Created by Michael Moore on 8/19/19.
//  Copyright © 2019 Michael Moore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MHMEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface MHMEntryController : NSObject

// shared instance
+ (MHMEntryController *) shared;

// properties
// SoT
@property (nonatomic, strong) NSMutableArray *entries;


// methods
- (void)addEntry:(NSString *)title body:(NSString *)body;
- (void)removeEntry:(MHMEntry *)entry;
- (void)updateEntry:(MHMEntry *)entry title:(NSString *)newTitle body:(NSString *)newBody timestamp:(NSDate *)newTimestamp;
- (void)saveToPersistentStorage:(MHMEntry *)entry;
- (void)loadFromPersistentStorage:(MHMEntry *)entry;

@end

NS_ASSUME_NONNULL_END
