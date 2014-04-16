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
- (NSObject *)findNode:(int)data;
- (void)put:(int)data;
- (int)size;
- (int)rank:(int)data;
- (void)deleteMin;
- (void)deleteValue:(int)data;
- (TreeNode *)getMin:(TreeNode *)node; 

//root first, next node's left, then right
- (void)printPreOrder:(TreeNode *)node;

//in order from least to greatest
- (void)printInOrder:(TreeNode *)node;

//print the highest left node with no left node, move down the tree printing left nodes
//once the bottom is reached print that right node, move back up the root priting each node
//then, same for right side
- (void)printPostOrder:(TreeNode *)node;

- (TreeNode *)bstFromArray:(int[])args andBeginning:(int)start andEnd:(int)end;
- (TreeNode *)createMininalBST:(int[])array andEnd:(int)end;
- (BOOL)bst_checker;




@end
