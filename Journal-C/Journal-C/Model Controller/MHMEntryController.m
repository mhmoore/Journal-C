//
//  MHMEntryController.m
//  Journal-C
//
//  Created by Michael Moore on 8/19/19.
//  Copyright © 2019 Michael Moore. All rights reserved.
//

#import "MHMEntryController.h"
#import "MHMEntry.h"

@implementation MHMEntryController

+ (MHMEntryController *) shared {
    static MHMEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [MHMEntryController new];
    });
    return shared;
}

-(instancetype)init {
    self = [super init];
    if (self) {
        _entries = [self entries];
    }
    return self;
}

- (void)addEntry:(NSString *)title body:(NSString *)body {
    MHMEntry *newEntry = [[MHMEntry alloc] initWith:title body:body];
    [self.entries addObject:newEntry];
}

- (void)removeEntry:(MHMEntry *)entry {
    [self.entries removeObject:entry];
}

- (void)updateEntry:(MHMEntry *)entry title:(NSString *)newTitle body:(NSString *)newBody timestamp:(NSDate *)newTimestamp {
    entry.title = newTitle;
    entry.body = newBody;
    entry.timestamp = newTimestamp;
}

-(void)saveToPersistentStorage:(MHMEntry *)entry {
    for (entry in _entries) {
    }
}

- (void)loadFromPersistentStorage:(MHMEntry *)entry {
    
}

@end
