//
//  ASJSONKit.m
//  ASJSONKit
//
//  Created by Andrew Shen on 15/11/19.
//  Copyright © 2015年 Andrew Shen. All rights reserved.
//

#import "ASJSONKit.h"

#pragma mark Deserializing methods
@implementation NSString (ASJSONKitDeserializing)

- (id)objectFromJSONString {
    NSData *dataStr = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [NSJSONSerialization JSONObjectWithData:dataStr options:NSJSONReadingAllowFragments error:NULL];
}

- (id)objectFromJSONStringWithReadingOptions:(NSJSONReadingOptions)readingOption {
    NSData *dataStr = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [NSJSONSerialization JSONObjectWithData:dataStr options:readingOption error:NULL];
    
}

- (id)objectFromJSONStringWithReadingOptions:(NSJSONReadingOptions)readingOption error:(NSError *__autoreleasing *)error {
    NSData *dataStr = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [NSJSONSerialization JSONObjectWithData:dataStr options:readingOption error:error];
}


@end

@implementation NSData (ASJSONKitDeserializing)

- (id)objectFromJSONData {
    return [NSJSONSerialization JSONObjectWithData:self options:NSJSONReadingAllowFragments error:NULL];
}

- (id)objectFromJSONDataWithReadingOptions:(NSJSONReadingOptions)readingOption {
    return [NSJSONSerialization JSONObjectWithData:self options:readingOption error:NULL];
}

- (id)objectFromJSONDataWithReadingOptions:(NSJSONReadingOptions)readingOption error:(NSError *__autoreleasing *)error {
    return [NSJSONSerialization JSONObjectWithData:self options:readingOption error:error];
}


@end


#pragma mark Serializing methods
@implementation NSArray (ASJSONKitSerializing)

- (NSData *)JSONData {
    return [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:NULL];
}

- (NSData *)JSONDataWithWritingOptions:(NSJSONWritingOptions)writingOption error:(NSError *__autoreleasing *)error {
    return [NSJSONSerialization dataWithJSONObject:self options:writingOption error:error];
    
}

- (NSString *)JSONString {
    NSString *result = [[NSString alloc] initWithData:[self JSONData] encoding:NSUTF8StringEncoding];
    return result ? result : @"";
}

- (NSString *)JSONStringWithWritingOptions:(NSJSONWritingOptions)writingOption error:(NSError *__autoreleasing *)error {
    
    NSString *result = [[NSString alloc] initWithData:[self JSONDataWithWritingOptions:writingOption error:error] encoding:NSUTF8StringEncoding];
    return result ? result : @"";
    
}
@end

@implementation NSDictionary (ASJSONKitSerializing)

- (NSData *)JSONData {
    return [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:NULL];
}

- (NSData *)JSONDataWithWritingOptions:(NSJSONWritingOptions)writingOption error:(NSError *__autoreleasing *)error {
    return [NSJSONSerialization dataWithJSONObject:self options:writingOption error:error];
    
}

- (NSString *)JSONString {
    NSString *result = [[NSString alloc] initWithData:[self JSONData] encoding:NSUTF8StringEncoding];
    return result ? result : @"";
}

- (NSString *)JSONStringWithWritingOptions:(NSJSONWritingOptions)writingOption error:(NSError *__autoreleasing *)error {
    NSString *result = [[NSString alloc] initWithData:[self JSONDataWithWritingOptions:writingOption error:error] encoding:NSUTF8StringEncoding];
    return result ? result : @"";
    
}
@end
