//
//  StackFromTwoQueues.m
//  Algorithms
//
//  Created by Matt Remick on 4/9/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "StackFromTwoQueues.h"

@implementation StackFromTwoQueues

- (id)init
{
    if (self = [super init]) {
        self.enqueueStack = [[Stack alloc] init];
        self.dequeueStack = [[Stack alloc] init];
    }
    
    return self; 
}

- (void)enqueue:(int)data
{
    [self.enqueueStack push:data];
}
- (int)dequeue
{
    
    if (self.dequeueStack.top) {
        return [self.dequeueStack pop];
    } else {
        Node *node = self.enqueueStack.top;
        
        while (node.next != nil) {
            [self.dequeueStack push:node.data];
            [self.enqueueStack pop];
            node = node.next;
            
        }
        return node.data;
    }
}

@end
