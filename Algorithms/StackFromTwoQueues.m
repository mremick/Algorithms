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
    Node *node = [[Node alloc] initWithData:data];
    if (self.enqueueStack.top == nil) {
        self.enqueueStack.top = node;
    } else {
        node.next = self.enqueueStack.top;
        self.enqueueStack.top = node;
    }
}

- (int)dequeue
{
    if (self.dequeueStack.top == nil) {
        if (self.enqueueStack.top != nil) {
            Node *holder = self.enqueueStack.top;
            while (holder != nil) {
                [self.dequeueStack push:[self.enqueueStack pop]];
                holder = holder.next;
            }
            
            return [self.dequeueStack pop];
        } else {
            return 0; 
        }
    }
    
    else {
        return [self.dequeueStack pop];
    }
}





@end
