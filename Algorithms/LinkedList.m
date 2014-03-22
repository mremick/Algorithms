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
    //[self.firstNode addNodeToEnd:node];
}

- (void)printNodes
{
    if (!self.firstNode) {
        return;
    } else {
        //[self.firstNode printNode];
    }
}

- (Node *)searchForNode:(Node *)node
{
    return [self.firstNode searchForNode:self.firstNode];
}

- (void)deleteNode:(Node *)node
{
    //[self.firstNode deleteNode:node];
}

- (void)removeDuplicatesLinkedClass:(NSMutableArray *)array
{
    //[self.firstNode removeDuplicates:array andPreviousNode:self.firstNode];
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

+ (void)addTwoLinkedLists:(LinkedList *)list1 andList2:(LinkedList *)list2;
{
    NSString *list1Number = @"";
    NSString *list2Number = @"";
    
    Node *node1 = list1.firstNode;
    Node *node2 = list2.firstNode;
    
    [list1 printNodes];
    [list2 printNodes];

    
    while (node1 != nil && node2 != nil) {
        Node *node1Next = node1.next;
        Node *node2Next = node2.next;
        
        node1.next = nil;
        node2.next = nil;
        
        NSString *tempNumber1 = [NSString stringWithFormat:@"%d",node1.data];
        NSString *tempNumber2 = [NSString stringWithFormat:@"%d",node2.data];
        
        [list1Number stringByAppendingString:tempNumber1];
        [list2Number stringByAppendingString:tempNumber2];
        
        node1 = node1Next;
        node2 = node2Next;
    }
    
    NSLog(@"1: %@",list1Number);
    NSLog(@"2: %@",list2Number); 
}






@end
