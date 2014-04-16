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

- (int)findLastParenthesis:(NSString *)string andIndex:(int)index
{
    int counter = 1;
    
    for (int i = index + 1; i < string.length; i++) {
        char character = [string characterAtIndex:i];
        
        if (counter == 0) {
            return i;
        }
        
        if (character == '(') {
            ++counter;
        } else if (character == ')'){
            --counter;
        }
    }
    
    return 0;
}

- (float)stockProfit:(float[])array andLength:(int)length;
{
    float low = array[0];
    float profit = 0;
    
    for (int i = 0; i < length; i++) {
        if (array[i] < low) {
            low = array[i];
        }
        
        if (array[i] - low > profit) {
            profit = array[i] - low;
        }
    }
    
    return profit; 
    
}
- (int)duplicatesInAnArray:(int[])array andLendth:(int)index
{
    int holder[index];
    
    for (int i = 0; i < index; i++) {
        if (holder[array[i]] == 1) {
            return array[i];
        } else {
            holder[array[i]] = 1;
        }
    }
    
    return 0; 
}

- (int)sums:(int)desiredSum andValues:(int[])args andLength:(int)length
{
  
    
    return 0;
}

- (int)rotationPoint:(NSArray *)words
{
    
    NSString *firstWord = [words objectAtIndex:0];
    char firstWordCharacter = [firstWord characterAtIndex:0];
    int floorIndex = 0;
    int ceilingIndex = (int)words.count - 1;

    while (floorIndex < ceilingIndex) {
        int guessIndex = floorIndex + ((ceilingIndex - floorIndex)/2);
        char guessIndexCharacter = [[words objectAtIndex:guessIndex] characterAtIndex:0];
        
        if (firstWordCharacter > guessIndexCharacter) {
            //go left
            ceilingIndex = guessIndex;
        } else {
            //go right
            floorIndex = guessIndex;
        }
        
        if (floorIndex + 1 == ceilingIndex) {
            return ceilingIndex;
        }
        
        
    }

    return 0;

}

- (int)findingAnIntegerInASortedArray:(int[])args andInt:(int)number andLength:(int)length
{
    int ceilingIndex = length - 1;
    int floorIndex = 0;
    
    while (floorIndex < ceilingIndex) {
        int guessIndex = floorIndex + ((ceilingIndex - floorIndex) / 2);
        
        if (args[guessIndex] > number) {
            //go left
            ceilingIndex = guessIndex;
        } else {
            floorIndex = guessIndex;
        }
        
        if (floorIndex + 1 == ceilingIndex) {
            return args[guessIndex];
        }
        
        NSLog(@"loop");
        
    }
    
    return 0;
}

- (int)oneIntMissingInRange:(int[])args andLength:(int)range
{
    int rangeAdded = 0;
    int arrayAdded = 0;
    
    for (int i = 1; i <= range; i++) {
        
        if (i < range) {
            arrayAdded += args[i-1];
        }
        rangeAdded += i;
    }
    
    
    
    return rangeAdded - arrayAdded;
}

- (BOOL)has_palindrome_permutation:(NSString *)string
{
    NSDictionary *parity_map = [[NSDictionary alloc] init];
    
    for (int i = 0; i < string.length; i++) {
        char c = [string characterAtIndex:i];
        
        NSString* character = [NSString stringWithFormat:@"A%c" , c];

        
        if ([parity_map valueForKey:character]) {
            [parity_map setValue:@0 forKey:character];
        } else {
            [parity_map setValue:@1 forKey:character];
        }
    }
    
    int odd_seen = 0;
    
    for (NSNumber *oddValue in parity_map) {
        if ([oddValue isEqual:@0]) {
            odd_seen++;
        }
    }
    
    if (odd_seen > 1) {
        return NO;
    } else {
        return YES;
    }
}

- (void)shuffle:(int[])args andLength:(int)length
{
    for (int i = 0; i < length; i++) {
        int randomIndex = arc4random() % length;
        int holder = args[randomIndex];
        args[randomIndex] = args[i];
        args[i] = holder;
    }
    
    for (int j = 0; j < length; j++) {
        NSLog(@"%d",args[j]);
    }
    
}

- (int)largestSum:(int[])args andLength:(int)length
{
    int high = args[0];
    int old_high = args[0];
    
    for (int i = 0; i < length; i++) {
        if (args[i] > high) {
            old_high = high;
            high = args[i];
        }
    }
    
    return high + old_high; 
}





@end
