//
//  ArraysAndStrings.h
//  Algorithms
//
//  Created by Matt Remick on 3/10/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArraysAndStrings : NSObject

+ (void)uniqueCharacter:(NSString *)string;
+ (NSString *)reverseString:(NSString *)string;
+ (BOOL)isPermutation:(NSString *)string andAnotherString:(NSString *)anotherString;
+ (NSString *)stringCompression:(NSString *)string;
+ (void)fizzbuzz:(int)i;
+ (int)maxDifference:(int[])arr andArraySize:(int)arraySize;
+ (BOOL)openersAndClosers:(NSString *)string;
- (void)reverseStringInPlace:(int[])args;

@end
