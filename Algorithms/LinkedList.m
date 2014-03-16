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

- (void)removeDuplicatesLinkedClass:(NSMutableArray *)array
{
    [self.firstNode removeDuplicates:array andPreviousNode:self.firstNode];
}

- (void)deleteMiddleNode:(Node *)node;
{
    [self.firstNode removeMiddleNode:node]; 
}
- (void)deleteNodeOnlyGivenTheNode:(Node *)node
{
    //pass the information from the next node to the node given
    node.data = node.next.data;
    
    //delete the next node
    node.next = node.next.next;
}

- (void)partitionLinkedListBasedOnX:(int)x
{
    /* all nodes less that than x come before all nodes greater than or equal to x */

    LinkedList *lessThanList = [LinkedList new];
    LinkedList *greaterThanList = [LinkedList new];
    
    Node *node = [[Node alloc] init];
    node = self.firstNode;
    
    while (node != nil) {
        
        Node *next = node.next;
        node.next = nil; 
        
        NSLog(@"DATA:%d",node.data);
        
        if (node.data >= x) {
            [greaterThanList addNodeToBeginning:node];
        } else {
            [lessThanList addNodeToBeginning:node];
        }
        
        node = next;
    }
        
    [lessThanList addNodeToEnd:greaterThanList.firstNode];
    
    [lessThanList printNodes];
    
}







@end
