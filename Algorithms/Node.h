//
//  Node.h
//  Algorithms
//
//  Created by Matt Remick on 3/10/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

@interface Node : NSObject

@property (nonatomic) int data;
@property (nonatomic) char character; 
@property (strong,nonatomic) Node *next;
@property (nonatomic) int min;
@property (strong,nonatomic) TreeNode *tNode; 

- (id)initWithData:(int)data;
- (id)initWithChar:(char)character;


+ (void)printNodes:(Node *)head;

- (Node *)searchForNode:(Node *)node;
- (void)addNodeToEnd:(int)d;
- (Node *)deleteNode:(Node *)head andDataToDelete:(int)d;
+ (void)removeDuplicates:(Node *)head;

- (void)removeMiddleNode:(Node *)node;
- (void)partitionLinkedListBasedOnX:(int)x;





@end

