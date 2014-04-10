//
//  ArraysAndStrings.m
//  Algorithms
//
//  Created by Matt Remick on 3/10/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "ArraysAndStrings.h"
#import "Stack.h"


@implementation ArraysAndStrings

+ (void)uniqueCharacter:(NSString *)string
{
    for (int i = 0; i < string.length; i++) {
        
        if (string.length > 256) {
            NSLog(@"The string was not unique");
            return;
        }
        
        int occurencesOfChar = 0;
        char character = [string characterAtIndex:i];
        occurencesOfChar = [[string componentsSeparatedByString:[NSString stringWithFormat:@"%c",character]] count]-1;
        if (occurencesOfChar > 1) {
            NSLog(@"The string is not unique");
            return;
        }
    }
    
    NSLog(@"The string is unique");
}

+ (NSString *)reverseString:(NSString *)string
{
    NSString *reversedString = [NSString new];
    reversedString = @"";
    
    for (int i = string.length - 1; i >= 0; i--) {
        char singleCharacter = [string characterAtIndex:i];
        NSString *character = [NSString stringWithFormat:@"%c",singleCharacter];
        
        reversedString = [reversedString stringByAppendingString:character];
    }
    
    return reversedString;
}

+ (BOOL)isPermutation:(NSString *)string andAnotherString:(NSString *)anotherString
{
    
    if (string.length != anotherString.length) {
        return FALSE;
    }
    
    int occurenceInString1 = 0;
    int occurenceInString2 = 0;
    
    for (int i = 0; i < string.length; i++) {
        char singleCharacter1 = [string characterAtIndex:i];
        NSString *character1 = [NSString stringWithFormat:@"%c",singleCharacter1];
        
        char singleCharacter2 = [anotherString characterAtIndex:i];
        NSString *character2 = [NSString stringWithFormat:@"%c",singleCharacter2];
        
        occurenceInString1 += [[string componentsSeparatedByString:character1] count]-1;
        occurenceInString2 += [[anotherString componentsSeparatedByString:character2] count]-1;
    }
    
    if (occurenceInString1 != occurenceInString2) {
        return FALSE;
    }
    
    return TRUE;
}

+ (NSString *)stringCompression:(NSString *)string
{
    int characterCount = 1;
    NSString *compressedString = [NSString new];
    
    NSLog(@"length: %d",string.length);
    
    for (int i = 0; i < string.length; i++) {
        
        char character = [string characterAtIndex:i];
        
        if (i == string.length - 1) {
            if ([string characterAtIndex:i] == [string characterAtIndex:i-1]) {
                characterCount++;
                compressedString = [compressedString stringByAppendingString:[NSString stringWithFormat:@"%c%d",character,characterCount]];
                
                return compressedString;
            } else {
                compressedString = [compressedString stringByAppendingString:[NSString stringWithFormat:@"%c",character]];
                return compressedString;
            }
        }
        
        
        if (character == [string characterAtIndex:i+1]) {
            characterCount++;
            
        } else {
            if (characterCount > 0) {
                //new character was found in next index, but duplicates were seen before
                compressedString = [compressedString stringByAppendingString:[NSString stringWithFormat:@"%c%d",character,characterCount]];
                
                
            } else {
                compressedString = [compressedString stringByAppendingString:[NSString stringWithFormat:@"%c",character]];
            }
            characterCount = 1;
        }
    }
    
    return compressedString;
}

+ (void)fizzbuzz:(int)i {
    
    if (i % 3 == 0 && i % 5 == 0) {
        NSLog(@"%d: fizzbuzz",i);
    } else if (i % 3 == 0) {
        NSLog(@"%d: fizz",i);
    } else if (i % 5 == 0) {
        NSLog(@"%d: buzz",i);
    }
}

+ (int)maxDifference:(int[])arr andArraySize:(int)arraySize
{
    int maxDifference = arr[1] - arr[0];
    int minElement = arr[0];
    
    for (int i = 0; i < arraySize; i++) {
        
        if (arr[i] < minElement) {
            minElement = arr[i];
        }
        
        if (arr[i] - minElement > maxDifference) {
            maxDifference = arr[i] - minElement;
        }
    
    }
    
    return maxDifference;
}

+ (BOOL)openersAndClosers:(NSString *)string
{
    BOOL isClosed = YES;
    Stack *stack = [[Stack alloc] init];
    
    for (int i = 0; i < string.length; i++) {
        char character = [string characterAtIndex:i];
        
        if (character == '{' || character == '[' || character == '(') {
            [stack pushChar:character];
        }
        
        if (character == '}' || character == ']' || character == ')') {
            char checker = [stack popChar];
            if (character == '}') {
                if (checker != '{') {
                    return NO;
                }
            }
            if (character == ']') {
                if (checker != '[') {
                    return NO;
                }
            }
            if (character == ')') {
                if (checker != '(') {
                    return NO;
                }
            }
        }
        
    }

    
    return isClosed; 
}







@end
