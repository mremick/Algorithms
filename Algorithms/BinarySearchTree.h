//
//  BinarySearchTree.h
//  Algorithms
//
//  Created by Matt Remick on 4/1/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

@interface BinarySearchTree : NSObject

- (void)addNode:(int)data andNode:(TreeNode *)node; 
@property (strong,nonatomic) TreeNode *root;
- (void)deleteNode:(int)data andNode:(TreeNode *)node;
- (void)printTree:(TreeNode *)node;
- (BOOL)isBST:(TreeNode *)node;


@end
