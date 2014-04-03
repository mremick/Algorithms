//
//  SetOfStacks.h
//  Algorithms
//
//  Created by Matt Remick on 3/28/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface SetOfStacks : NSObject

- (void)push:(int)data;
- (int)pop;
- (int)popAtIndex:(int)index; 
@property (nonatomic) int index;
@property (nonatomic) int stackLength;
@property (strong,nonatomic) Node *top; 

@property (strong,nonatomic) NSMutableArray *stacks;
- (id)init; 

@end
