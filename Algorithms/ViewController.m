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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    Stack *stack = [[Stack alloc] init];
    
    for (int i = 0; i < 30; i++) {
        [stack push:(arc4random() % 30) + 1];
    }
    
    [stack printStack];
    
    NSLog(@"MIN: %d",[stack min]);
    

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
