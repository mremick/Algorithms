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
@property (nonatomic) int min; 

- (id)initWithData:(int)data;

+ (void)printNodes:(Node *)head;

- (Node *)searchForNode:(Node *)node;
- (void)addNodeToEnd:(int)d;
- (Node *)deleteNode:(Node *)head andDataToDelete:(int)d;
+ (void)removeDuplicates:(Node *)head;

- (void)removeMiddleNode:(Node *)node;
- (void)partitionLinkedListBasedOnX:(int)x;





@end

