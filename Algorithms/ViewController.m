//
//  ViewController.m
//  Algorithms
//
//  Created by Matt Remick on 3/10/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "ViewController.h"
#import "ArraysAndStrings.h"
#import "Node.h"
#import "LinkedList.h"
#import "Sorts.h"
#import "Stack.h"
#import "SetOfStacks.h"
#import "TreeNode.h"
#import "BinarySearchTree.h"
#import "Queue.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    BinarySearchTree *BST = [[BinarySearchTree alloc] init];
    [BST addNode:10 andNode:nil];
    TreeNode *root = BST.root;
    
    [BST addNode:6 andNode:root];
    [BST addNode:14 andNode:root];
    [BST addNode:5 andNode:root];
    [BST addNode:8 andNode:root];
    [BST addNode:11 andNode:root];
    [BST addNode:18 andNode:root];

    //[BST deleteNode:14 andNode:root];
    
    Queue *queue = [[Queue alloc] init];
    [queue enqueue:1];
    [queue enqueue:2];
    [queue enqueue:3];
    [queue enqueue:4];
    [queue enqueue:5];
    [queue enqueue:6];
    [queue enqueue:7];
    [queue enqueue:8];
    [queue enqueue:9];
    [queue enqueue:10];
    [queue enqueue:11];
    [queue enqueue:12];
    [queue enqueue:13];
    [queue enqueue:14];
    [queue enqueue:15];

    
    [queue dequeue];
    [queue enqueue:20];
    
    [queue printQueue];

    
    

}

- (void)hanoi:(Stack *)stack1 andStack2:(Stack *)stack2
{
    if (stack1.top.data < stack2.top.data || stack2.top == nil) {
        [stack2 push:stack1.top.data];
        [stack1 pop];
    } else if (stack2.top.data < stack1.top.data || stack1.top == nil) {
        [stack1 push:stack2.top.data];
        [stack2 pop];
    }
}

- (void)hanoiFinal:(Stack *)stack1 andStack2:(Stack *)stack2 andStack3:(Stack *)stack3
{
    
    int i = 0;
    
    do {
        
        
        [self hanoi:stack1 andStack2:stack2];
        NSLog(@"3 in stack 3: %d",stack3.top.next.next.data);
        
        if (stack3.top.data == 3) {
            i =1;
            return;
        }

        [self hanoi:stack2 andStack2:stack3];

        if (stack3.top.data == 3) {
            i =1;
            return;
        }

        [self hanoi:stack1 andStack2:stack3];

        if (stack3.top.data == 3) {
            i =1;
            return;
        }


    } while (i == 0);
    
        

    NSLog(@"1 in stack 3: %d",stack3.top.data);
    NSLog(@"2 in stack 3: %d",stack3.top.next.data);
    NSLog(@"3 in stack 3: %d",stack3.top.next.next.data);

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)deleteMiddle:(Node *)n
{
    n.data = n.next.data;
    n.next = n.next.next;
}

- (Node *)partition:(Node *)n andData:(int)d
{
    Node *gth;
    Node *lth;
    Node *lte;
    
    while (n != nil) {
        
        Node *next = n.next;
        n.next = nil;

        
        if (n.data >= d) {
            if (!gth) {
                gth = n;
            } else {
                n.next = gth;
                gth = n;
            }
        } else {
            if (!lth) {
                lth = n;
                lte = n;
            } else {
                n.next = lth;
                lth = n;
            }
        }
        
        n = next;
    }
    
    lte.next = gth;
    
    return lth;
}

- (Node *)add:(Node *)l1 otherNode:(Node *)l2 andCarry:(int)d
{
    Node *product = nil;
    
    while (l1 != nil || l2 != nil) {
        int x = l1.data + l2.data;
        
        if (d == 1) {
            x += d;
            d = 0;
        }
        
        if (x >= 10) {
            d = 1;
            x %= 10;
        }
        
        if (!product) {
            product = [[Node alloc] initWithData:x];
        } else if (!product.next) {
            product.next = [[Node alloc] initWithData:x];
        } else {
            product.next.next = [[Node alloc] initWithData:x];
        }
        
        x = 0;
        l1 = l1.next;
        l2 = l2.next;
    }
    
    return product;
}

- (Node *)loop:(Node *)head
{
    Node *n = head;
    NSHashTable *hash = [[NSHashTable alloc] init];
    
    while (n != nil) {
        if ([hash containsObject:n]) {
            return n;
        } else {
            [hash addObject:n];
        }
        
        n = n.next;
    }
    
    return nil;
}





@end
