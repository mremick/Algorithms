//
//  Sorts.m
//  Algorithms
//
//  Created by Matt Remick on 3/16/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "Sorts.h"

@implementation Sorts

+ (NSMutableArray *)quickSort:(NSMutableArray *)unsortedArray
{
    
    if (unsortedArray.count <= 1) {
        return unsortedArray;
    }
    
    int partition = arc4random() % [unsortedArray count];
    
    NSNumber *removedPartition = [unsortedArray objectAtIndex:partition];
    [unsortedArray removeObjectAtIndex:partition];
    
    NSMutableArray *greaterThanArray = [NSMutableArray new];
    NSMutableArray *lessThanArray = [NSMutableArray new];

    for (int i = 0; i < unsortedArray.count; i++) {
        if ([unsortedArray objectAtIndex:i] >= removedPartition) {
            [greaterThanArray addObject:[unsortedArray objectAtIndex:i]];
        } else {
            [lessThanArray addObject:[unsortedArray objectAtIndex:i]];
        }
    }
    
    NSMutableArray *sortedArray = [NSMutableArray new];
    
    [sortedArray addObjectsFromArray:[self quickSort:lessThanArray]];
    [sortedArray addObject:removedPartition];
    [sortedArray addObjectsFromArray:[self quickSort:greaterThanArray]];
    
    return sortedArray; 
}




@end
