//
//  ASJSONKit.h
//  ASJSONKit
//
//  Created by Andrew Shen on 15/11/19.
//  Copyright © 2015年 Andrew Shen. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Deserializing methods
@interface NSString (ASJSONKitDeserializing)
// default NSString will be UTF8 encoded, readingOption is NSJSONReadingAllowFragments
- (id)objectFromJSONString;
- (id)objectFromJSONStringWithReadingOptions:(NSJSONReadingOptions)readingOption;
- (id)objectFromJSONStringWithReadingOptions:(NSJSONReadingOptions)readingOption error:(NSError **)error;
@end

@interface NSData (ASJSONKitDeserializing)
// default readingOption is NSJSONReadingAllowFragments
- (id)objectFromJSONData;
- (id)objectFromJSONDataWithReadingOptions:(NSJSONReadingOptions)readingOption;
- (id)objectFromJSONDataWithReadingOptions:(NSJSONReadingOptions)readingOption error:(NSError **)error;
@end


#pragma mark Serializing methods
@interface NSArray (ASJSONKitSerializing)
- (NSData *)JSONData;
- (NSData *)JSONDataWithWritingOptions:(NSJSONWritingOptions)writingOption error:(NSError **)error;

// UTF8 encoded
- (NSString *)JSONString;
- (NSString *)JSONStringWithWritingOptions:(NSJSONWritingOptions)writingOption error:(NSError **)error;
@end

@interface NSDictionary (ASJSONKitSerializing)
- (NSData *)JSONData;
- (NSData *)JSONDataWithWritingOptions:(NSJSONWritingOptions)writingOption error:(NSError **)error;

// UTF8 encoded
- (NSString *)JSONString;
- (NSString *)JSONStringWithWritingOptions:(NSJSONWritingOptions)writingOption error:(NSError **)error;
@end
