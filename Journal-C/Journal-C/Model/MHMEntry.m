//
//  MHMEntry.m
//  Journal-C
//
//  Created by Michael Moore on 8/19/19.
//  Copyright © 2019 Michael Moore. All rights reserved.
//

#import "MHMEntry.h"

@implementation MHMEntry

- (instancetype)initWith:(NSString *)title body:(NSString *)body {
    
    self = [super init];
    
    if (self) {
        _title = [title copy];
        _body = [body copy];
        _timestamp = NSDate.date;
    }
    return self;
}

- (NSDictionary *)dictionaryCopy {
    // var dictionary: [String : Any] = [:]
    NSMutableDictionary <NSString *, id> *dictionary = [[NSMutableDictionary alloc] init];
    // encoding
    dictionary[@"timestampKey"] = self.timestamp;
    dictionary[@"titleKey"] = self.title;
    dictionary[@"bodyKey"] = self.body;
    return dictionary;
}

- (instancetype)initWithDictionary:(NSMutableDictionary<NSString *,id> *)dictionary {
    self = [super init];
    // decoding
    if (self) {
        _title = dictionary[@"titleKey"];
        _body = dictionary[@"bodyKey"];
        _timestamp = dictionary[@"timestampKey"];
    }
    return self;
}

@end
