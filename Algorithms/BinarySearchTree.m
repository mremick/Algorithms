//
//  BinarySearchTree.m
//  Algorithms
//
//  Created by Matt Remick on 4/1/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "BinarySearchTree.h"

@implementation BinarySearchTree

- (void)addNode:(int)data andNode:(TreeNode *)node
{
    
    if (!self.root) {
        TreeNode *newRoot = [[TreeNode alloc] initWithData:10];
        self.root = newRoot;
        return;
    } else {
        if (data <= node.data) {
            if (!node.leftNode) {
                TreeNode *newNode = [[TreeNode alloc] initWithData:data];
                node.leftNode = newNode;
                return;
            } else {
                [self addNode:data andNode:node.leftNode];
            }
        } else if (data > node.data) {
            if (!node.rightNode) {
                TreeNode *newNode = [[TreeNode alloc] initWithData:data];
                node.rightNode = newNode;
                return;
            } else {
                [self addNode:data andNode:node.rightNode];
            }
        } else {
            NSLog(@"less than or greater were not found");
        }
    }
}

- (void)deleteNode:(int)data andNode:(TreeNode *)node
{
    NSLog(@"called for %d",node.data);
    
    if (!self.root) {
        NSLog(@"root was nil");
        return;
    }
 
    if (node.leftNode.data == data) {
        node.leftNode = node.leftNode.leftNode;
        return;
    } else if (node.rightNode.data == data) {
        node.rightNode = node.rightNode.rightNode;
        return;
    }
    
    if (data <= node.data) {
        [self deleteNode:data andNode:node.leftNode];
    } else if (data > node.data) {
        [self deleteNode:data andNode:node.rightNode];
    } else {
        return;
    }
    
    
    
}

- (void)printTree:(TreeNode *)node
{
    if (node.leftNode) {
        [self printTree:node.leftNode];
    }
    
    if (node.rightNode) {
        [self printTree:node.rightNode];
    }
    
    [self printLeaf:node];
    
}

- (void)printLeaf:(TreeNode *)node
{
    NSLog(@"%d -> ",node.data);
}

- (BOOL)isBST:(TreeNode *)node
{
    BOOL isBST = YES;
    
    if (node.leftNode) {
        [self isBST:node.leftNode];
    }
    
    if (node.rightNode) {
        [self isBST:node.rightNode];
    }
    
    isBST = [self BSTCheck:node];
    
    if (isBST == NO) {
        return isBST;
    }
    
    return isBST; 
}

-(BOOL)BSTCheck:(TreeNode *)node
{
    if (node.leftNode.data > node.data) {
        return NO;
    } else if (node.rightNode.data < node.data) {
        return NO;
    } else {
        return YES;
    }
}


@end
