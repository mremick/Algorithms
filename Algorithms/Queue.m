//
//  Queue.m
//  Algorithms
//
//  Created by Matt Remick on 3/28/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "Queue.h"

@implementation Queue

- (void)enqueue:(int)data
{
    Node *newNode = [[Node alloc] initWithData:data];
    
    if (self.first == nil) {
        self.first = newNode;
        self.last = newNode;
    } else {
        //add new node to end
        self.last.next = newNode;
        self.last = newNode;
    }
}

- (int)dequeue
{
    if (self.first != nil) {
        int data = self.first.data;
        self.first = self.first.next;
        return data;
    }
    
    return 0; 
}

- (BOOL)isEmpty
{
    return self.first == nil;
}

- (void)printQueue
{
    while (self.first != nil) {
        NSLog(@"data: %d",self.first.data);
        self.first = self.first.next; 
    }
}





@end
