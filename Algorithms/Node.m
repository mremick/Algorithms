//
//  Node.m
//  Algorithms
//
//  Created by Matt Remick on 3/10/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "Node.h"

@implementation Node


- (id)initWithData:(int)data
{
    if (self = [super init]) {
        self.data = data;
        self.next = nil;
    }
    
    return self;
}

- (void)printNode
{
    NSLog(@"--> | %d || -->",self.data);
    
    if (self.next) {
        [self.next printNode];
    }
}

- (Node *)searchForNode:(Node *)node
{
    if (self.data == node.data) {
        return self;
    } else {
        return [self searchForNode:self.next];
    }
}

- (void)addNodeToEnd:(Node *)node
{
    if (self.next == Nil) {
        self.next = node;
    } else {
        [self.next addNodeToEnd:node];
    }
    
}
- (void)deleteNode:(Node *)node
{
    if (self.next.data == node.data) {
        self.next = self.next.next;
    } else {
        [self.next deleteNode:node];
    }
}

- (void)removeDuplicates:(NSMutableArray *)array andPreviousNode:(Node *)prev
{
    if (!self) {
        return;
    }
    
    else if (![array containsObject:[NSString stringWithFormat:@"%d",self.data]]) {
        [array addObject:[NSString stringWithFormat:@"%d",self.data]];
        [self.next removeDuplicates:array andPreviousNode:self];
    }
    
    
    else  {
        prev.next = prev.next.next;
        [self.next removeDuplicates:array andPreviousNode:self];
    }
    
    
}





@end
