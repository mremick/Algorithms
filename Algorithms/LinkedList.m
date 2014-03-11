//
//  LinkedList.m
//  Algorithms
//
//  Created by Matt Remick on 3/10/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

- (void)addNodeToBeginning:(Node *)node
{
    if (!self.firstNode) {
        self.firstNode = node;
    } else {
        node.next = self.firstNode;
        self.firstNode = node;
    }
    
}

- (void)addNodeToEnd:(Node *)node
{
    [self.firstNode addNodeToEnd:node];
}

- (void)printNodes
{
    if (!self.firstNode) {
        return;
    } else {
        [self.firstNode printNode];
    }
}

- (Node *)searchForNode:(Node *)node
{
    return [self.firstNode searchForNode:self.firstNode];
}

- (void)deleteNode:(Node *)node
{
    [self.firstNode deleteNode:node];
}


@end
