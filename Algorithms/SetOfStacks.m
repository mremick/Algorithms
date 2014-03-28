//
//  SetOfStacks.m
//  Algorithms
//
//  Created by Matt Remick on 3/28/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "SetOfStacks.h"
#import "Node.h"

#define THE_LIMIT 10

@implementation SetOfStacks

- (void)push:(int)data
{
    Node *newNode = [[Node alloc] initWithData:data];

    if (self.stackLength > THE_LIMIT) {
        self.index++;
        [self.stacks insertObject:newNode atIndex:self.index];
        self.stackLength = 1;
    } else {
        Node *head = [self.stacks objectAtIndex:self.index];
        if (head != nil) {
            newNode.next = head;
            head = newNode;
            self.stackLength++;
        }
    }
}

- (int)pop
{
    if (self.stackLength == 1) {
        if (self.index == 0) {
            return 0; /* FIX */
        } else {
            self.index--;
            self.stackLength = 10;
        }
    }
    
    Node *head = [self.stacks objectAtIndex:self.index];
    int data = head.data;
    if (head != nil) {
        head = head.next;
        self.stackLength--;
    }
    
    return data;
}

- (int)popAtIndex:(int)index
{
    if ([self.stacks objectAtIndex:index]) {
        Node *head = [self.stacks objectAtIndex:index];
        int data = head.data;
        head = head.next;
        return data;
    }
    
    return 0; 
}



@end
