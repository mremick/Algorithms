//
//  Node.m
//  Algorithms
//
//  Created by Matt Remick on 3/10/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "Node.h"

@implementation Node


- (id)initWithData:(int)data
{
    if (self = [super init]) {
        self.data = data;
        self.next = nil;
    }
    
    return self;
}

+ (void)printNodes:(Node *)head
{
    //NSLog(@"--> | %d || -->",self.data);
    
    Node *n = head;
    
    while (n != nil) {
        NSLog(@"--> | %d || -->",n.data);
        n = n.next;
    }
    
    
}

- (Node *)searchForNode:(Node *)node
{
    if (self.data == node.data) {
        return self;
    } else {
        return [self searchForNode:self.next];
    }
}

- (void)addNodeToEnd:(int)d
{
    Node *end = [[Node alloc] initWithData:d];
    Node *n = self;
    
    while (n.next != nil) {
        n = n.next;
    }
    
    
    n.next = end;
    
}
- (Node *)deleteNode:(Node *)head andDataToDelete:(int)d
{
    Node *n = head;
    
    if (n.data == d) {
        return n.next; /* removed head */
    }
    
    while (n.next != nil) {
        if (n.next.data == d) {
            n.next = n.next.next;
            return head; /* head didn't change */
        }
        
        n = n.next;
    }
    
    return head;
}

- (void)removeDuplicates:(Node *)head
{
    
    NSHashTable *hashtable = [NSHashTable new];
    
    Node *n = head;
    Node *previous = nil;
    
    while (n != nil) {
        
        if ([hashtable containsObject:[NSNumber numberWithInt:n.data]]) {
            previous.next = n.next;
        } else {
            [hashtable addObject:[NSNumber numberWithInt:n.data]];
            previous = n;
            
        }
        
        n = n.next;
        
    }
    
    NSLog(@"%@",hashtable);
}

- (void)removeMiddleNode:(Node *)node
{
    if (!self.next) {
        return;
    }
    
    else if (self.next.data == node.data) {
        self.next = self.next.next;
    }
    
    else {
        [self.next removeMiddleNode:node];
    }
}









@end
