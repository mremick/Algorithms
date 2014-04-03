//
//  SetOfStacks.m
//  Algorithms
//
//  Created by Matt Remick on 3/28/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "SetOfStacks.h"
#import "Node.h"
#import "Stack.h"

#define THE_LIMIT 10

@implementation SetOfStacks

- (id)init
{
    if (self = [super init]) {
        self.stackLength = 0;
        self.index = 0;
        self.stacks = [NSMutableArray new];
    }
    
    return self; 
}

- (void)push:(int)data
{
    
    if (self.stackLength == THE_LIMIT) {
        self.index++;
        Stack *newStack = [[Stack alloc] init];
        [newStack push:data];
        [self.stacks insertObject:newStack atIndex:self.index];
        self.stackLength = 1;
    } else {
        if (self.stacks.count) {
            Stack *currentStack = [self.stacks objectAtIndex:self.index];
            [currentStack push:data];
            self.stackLength++;
        } else {
            Stack *newStack = [[Stack alloc] init];
            [self.stacks addObject:newStack];
            [newStack push:data];
            self.stackLength++;
        }
    }
    
}

- (int)pop
{
    NSLog(@"stack length in pop:%d",self.stackLength);
    
    Stack *currentStack = [self.stacks objectAtIndex:self.index];

    
    
    int data = [currentStack pop];
    self.stackLength--;
    
    if (self.stackLength == 0) {
        if (self.index == 0) {
            return 0; /* FIX */
        } else {
            self.index--;
            self.stackLength = 10;
        }
    }
    
    return data;
}

- (int)popAtIndex:(int)index
{
    if ([self.stacks objectAtIndex:index]) {
        Stack *currentStack = [self.stacks objectAtIndex:index];
        int data = currentStack.top.data;
        currentStack.top = currentStack.top.next;
        return data;
    }
    
    return 0; 
}



@end
