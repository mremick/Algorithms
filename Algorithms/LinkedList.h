//
//  LinkedList.h
//  Algorithms
//
//  Created by Matt Remick on 3/10/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject

@property (strong,nonatomic) Node *firstNode;


- (void)addNodeToBeginning:(Node *)node;
- (void)addNodeToEnd:(Node *)node;
- (void)printNodes;
- (Node *)searchForNode:(Node *)node;
- (void)deleteNode:(Node *)node;
- (void)removeDuplicatesLinkedClass:(NSMutableArray *)array;
- (void)deleteNodeOnlyGivenTheNode:(Node *)node;
- (void)partitionLinkedListBasedOnX:(int)x;
+ (void)addTwoLinkedLists:(LinkedList *)list1 andList2:(LinkedList *)list2;
- (int)count;
- (BOOL)isLoop;
- (int)getMidpoint;
- (int)findTheKthElement:(int)i;
- (BOOL)isPalindrome; 
@end
