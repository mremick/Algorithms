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
        TreeNode *newRoot = [[TreeNode alloc] initWithData:data];
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
    
    if (data < node.data) {
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

- (NSObject *)findNode:(int)data
{
    TreeNode *x = self.root;
    
    if (!x) {
        NSLog(@"root was nil");
    }
    
    while (x != nil) {
        
        NSLog(@"x data: %d",x.data);
        if (data < x.data) {
            x = x.leftNode;
        } else if (data > x.data) {
            x = x.rightNode;
        } else {
            return [NSNumber numberWithInt:x.data];
        }
    }
    
    return NULL;
}

- (void)put:(int)data;
{
    self.root = [self privatePut:self.root andData:data];
}

- (TreeNode *)privatePut:(TreeNode *)x andData:(int) data
{
    if (x == nil) {
        TreeNode *newNode = [[TreeNode alloc] initWithData:data];
        return newNode;
    }
    
    if (data < x.data) {
        x.leftNode = [self privatePut:x.leftNode andData:data];
    } else if (data > x.data) {
        x.rightNode = [self privatePut:x.rightNode andData:data];
    } else {
        x.data = data;
        x.count = 1 + [self privateSize:x.leftNode] + [self privateSize:x.rightNode];
    }
    
    return x;
}

- (int)size
{
    return [self privateSize:self.root];
}

- (int)privateSize:(TreeNode *)x
{
    if (x == nil) {
        return 0;
    }
    
    return x.count;
}

- (int)rank:(int)data;
{
    return [self privateRank:data andNode:self.root];
}

- (int)privateRank:(int)data andNode:(TreeNode *)x
{
    if (x == nil) {
        return 0;
    }
    
    if (data < x.data) {
        return [self privateRank:data andNode:x.leftNode];
    } else if (data > x.data) {
        return 1 + [self privateRank:data andNode:x.leftNode] + [self privateRank:data andNode:x.rightNode];
    } else {
        return [self privateSize:x.leftNode]; 
    }
}

- (void)printInOrder:(TreeNode *)node;
{
    if (node.data == 0 || node == nil) {
        return; 
    }
    
    
    [self printInOrder:node.leftNode];
    NSLog(@"%d ->",node.data);
    [self printInOrder:node.rightNode];
}

- (void)printPostOrder:(TreeNode *)node
{
    if (node == nil) {
        return;
    }
    
    [self printPostOrder:node.leftNode];
    [self printPostOrder:node.rightNode];
    NSLog(@"%d ->",node.data);
}

- (void)printPreOrder:(TreeNode *)node
{
    if (node == nil) {
        return; 
    }
    
    
    NSLog(@"%d ->",node.data);
    if (node.leftNode != nil) {
        [self printPreOrder:node.leftNode];
    }
    
    if (node.rightNode != nil) {
        [self printPreOrder:node.rightNode];
    }
    
    //return;
}

- (void)deleteMin
{
    self.root = [self privateDeleteMin:self.root];
}


- (TreeNode *)privateDeleteMin:(TreeNode *)node
{
    if (node.leftNode == nil) {
        return node.rightNode;
    }
    
    node.leftNode = [self privateDeleteMin:node.leftNode];
    //update count
    return node; 
}

- (void)deleteValue:(int)data
{
    self.root = [self privateDelete:self.root andData:data];
}

- (TreeNode *)privateDelete:(TreeNode *)node andData:(int)data
{
    if (node == nil) {
        return nil;
    }
    
    if (node.leftNode.data < data) {
        [self privateDelete:node.leftNode andData:data];
    } else if (node.rightNode.data > data) {
        [self privateDelete:node.rightNode andData:data];
    } else {
        if (node.rightNode == nil) {
            return node.leftNode;
        }
        if (node.leftNode == nil) {
            return node.rightNode;
        }
        
        TreeNode *t = node;
        node = [self getMin:t.rightNode];
        node.rightNode = [self privateDeleteMin:t.rightNode];
        node.leftNode = t.leftNode;
    }
    
    
    return node;
}

- (TreeNode *)getMin:(TreeNode *)node
{
    while (node.leftNode != nil) {
        node = node.leftNode;
    }
    
    return node;
}

- (TreeNode *)bstFromArray:(int[])args andBeginning:(int)start andEnd:(int)end
{
    if (end < start) {
        return nil;
    }
    
    int mid = (start + end) / 2;
    TreeNode *n = [[TreeNode alloc] initWithData:args[mid]];
    n.leftNode = [self bstFromArray:args andBeginning:start andEnd:mid - 1];
    n.rightNode = [self bstFromArray:args andBeginning:mid + 1 andEnd:end];
    return n;
}

- (TreeNode *)createMininalBST:(int[])array andEnd:(int)end
{
    return [self bstFromArray:array andBeginning:0 andEnd:end - 1];
}











@end
