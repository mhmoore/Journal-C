//
//  MHMEntry.h
//  Journal-C
//
//  Created by Michael Moore on 8/19/19.
//  Copyright © 2019 Michael Moore. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MHMEntry : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *body;
@property (nonatomic, copy) NSDate *timestamp;

- (instancetype)initWith:(NSString *)title body:(NSString *)body;
// encode
-(instancetype)initWithDictionary:(NSMutableDictionary <NSString *, id>*)dictionary;
// decode
-(NSMutableDictionary *) dictionaryCopy;

@end

NS_ASSUME_NONNULL_END
