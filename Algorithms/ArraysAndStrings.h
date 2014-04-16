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
- (int)findLastParenthesis:(NSString *)string andIndex:(int)index;
- (float)stockProfit:(float[])array andLength:(int)length;
- (int)duplicatesInAnArray:(int[])array andLendth:(int)index;
- (int)sums:(int)desiredSum andValues:(int[])args andLength:(int)length;
- (int)rotationPoint:(NSArray *)words;
- (int)findingAnIntegerInASortedArray:(int[])args andInt:(int)number andLength:(int)length;
- (int)oneIntMissingInRange:(int[])args andLength:(int)range;
- (BOOL)has_palindrome_permutation:(NSString *)string;
- (void)shuffle:(int[])args andLength:(int)length;
- (int)largestSum:(int[])args andLength:(int)length; 

@end
