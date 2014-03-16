//
//  Node.h
//  Algorithms
//
//  Created by Matt Remick on 3/10/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic) int data;
@property (strong,nonatomic) Node *next;

- (id)initWithData:(int)data;

- (void)printNode;

- (Node *)searchForNode:(Node *)node;
- (void)addNodeToEnd:(Node *)node;
- (void)deleteNode:(Node *)node;
- (void)removeDuplicates:(NSMutableArray *)array andPreviousNode:(Node *)prev;
- (void)removeMiddleNode:(Node *)node;
- (void)partitionLinkedListBasedOnX:(int)x;





@end

